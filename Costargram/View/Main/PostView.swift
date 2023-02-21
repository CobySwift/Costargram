//
//  PostView.swift
//  Costargram
//
//  Created by Coby Kim on 2023/02/21.
//

import SwiftUI

struct PostView: View {
    @State private var recentPosts: [Post] = []
    @State private var createNewPost: Bool = false
    var body: some View {
        NavigationStack {
            ReusablePostsView(posts: $recentPosts)
                .hAlign(.center).vAlign(.center)
                .overlay(alignment: .bottomTrailing) {
                    Button {
                        createNewPost.toggle()
                    } label: {
                        Image(systemName: "plus")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .padding(13)
                            .background(.black, in: Circle())
                    }
                    .padding(15)
                }
                .navigationTitle("Post's")
        }
        .fullScreenCover(isPresented: $createNewPost) {
            CreateNewPost { post in
                /// - Adding Created post at the Top of the Recent Posts
                recentPosts.insert(post, at: 0)
            }
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView()
    }
}
