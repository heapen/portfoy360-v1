import SwiftUI

struct NewsArticleRowView: View {
    let title: String
    let source: String
    let time: String

    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(AppFonts.body)
                .foregroundColor(AppColors.primaryText)
                .lineLimit(2)
            
            HStack {
                Text(source)
                    .font(AppFonts.caption)
                    .foregroundColor(AppColors.secondaryText)
                Spacer()
                Text(time)
                    .font(AppFonts.caption)
                    .foregroundColor(AppColors.secondaryText)
            }
        }
        .padding(.vertical, 8)
    }
}

struct NewsArticleRowView_Previews: PreviewProvider {
    static var previews: some View {
        NewsArticleRowView(title: "Teknoloji Hisselerinde Yükseliş Sürüyor", source: "Bloomberg", time: "2 saat önce")
    }
}