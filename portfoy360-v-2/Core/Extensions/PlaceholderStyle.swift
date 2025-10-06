import SwiftUI

struct PlaceholderStyle: ViewModifier {
    var showPlaceHolder: Bool
    var placeholder: String

    public func body(content: Content) -> some View {
        ZStack(alignment: .leading) {
            if showPlaceHolder {
                Text(placeholder)
                    .foregroundColor(AppColors.secondaryText)
                    .padding(.horizontal, 15)
            }
            content
                .foregroundColor(AppColors.primaryText)
                .padding(.horizontal, 15)
        }
    }
}