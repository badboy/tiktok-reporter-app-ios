//
//  MainTextField.swift
//  TikTok Reporter
//
//  Created by Sergiu Ghiran on 06.11.2023.
//

import SwiftUI

struct MainTextField: View {
    
    // MARK: - Properties
    
    @Binding
    var text: String
    @Binding
    var isValid: Bool
    
    var placeholder: String
    var isMultiline: Bool
    
    @State
    var opacity: CGFloat = 0.0
    
    // MARK: - Body
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            ZStack(alignment: .leading) {
                
                if isMultiline {
                    multilineTextField
                } else {
                    textField
                        .onChange(of: text) { _ in
                            isValid = true
                        }
                }
                
                placeholderView
                    .padding(.leading, .s)
            }
            
            if !isValid {
                HStack {
                    Text("This field cannot be empty")
                        .font(.body2)
                        .foregroundStyle(.error)
                    Spacer()
                }
            }
        }
    }
    
    // MARK: - Views
    
    private var textField: some View {
        
        TextField(placeholder, text: $text)
            .font(.body1)
            .padding(.m)
            .frame(height: 40.0)
            .border(isValid ? .text : .error, width: 1.0)
            .padding(.top, .s)
    }
    
    @ViewBuilder
    private var multilineTextField: some View {
        
        if #available(iOS 16, *) {
            
            TextEditor(text: $text)
                .font(.body1)
                .padding(.horizontal, .s)
                .padding(.vertical, .xs)
                .frame(minHeight: 104.0)
                .border(.text, width: 1.0)
                .scrollContentBackground(.hidden)
                .background {
                    editorBackground
                }
                .fixedSize(horizontal: false, vertical: true)
                .padding(.top, .s)
        } else {
            
            TextEditor(text: $text)
                .font(.body1)
                .padding(.horizontal, .s)
                .padding(.vertical, .xs)
                .frame(minHeight: 104.0)
                .border(.text, width: 1.0)
                .background {
                    editorBackground
                }
                .fixedSize(horizontal: false, vertical: true)
                .padding(.top, .s)
        }
    }
    
    private var placeholderView: some View {
        
        VStack {
            Text(placeholder)
                .font(.body2)
                .padding(.horizontal, .xs)
                .background(.white)
                .opacity(opacity)
                .onChange(of: text) { newValue in
                    withAnimation {
                        opacity = newValue.isEmpty ? 0.0 : 1.0
                    }
                }
            Spacer()
        }
    }
    
    private var editorBackground: some View {

        VStack {
            HStack {
                Text(placeholder)
                    .font(.body1)
                    .foregroundStyle(text.isEmpty ? .inactive : .clear)
                Spacer()
            }
            Spacer()
        }
        .padding(.m)
    }
}

#Preview {
    MainTextField(text: .constant(""), isValid: .constant(true), placeholder: "Placeholder", isMultiline: true)
}
