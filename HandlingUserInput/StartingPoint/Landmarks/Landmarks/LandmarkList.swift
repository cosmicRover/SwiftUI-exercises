/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view showing a list of landmarks.
*/

import SwiftUI

struct LandmarkList: View {
    
    /* mutable var refference that can hold state aka @State */
    /* in this case, @EnvironmentObject denotes the presence of data from a data class
     aka' ViewModel. Also passed to sceneDelegate to init first*/
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        /* combine static and dynamic view in a list by passing ForEach on list*/
        NavigationView {
            List{
                /* Toggle switch mapped to willShowFavoriteOnly*/
                Toggle(isOn: $userData.showFavOnly) {
                    Text("Show favorites only?")
                }
                
                /* passing in LandmarksData from UserData refference */
                ForEach(userData.landmarks){landmark in
                    if !self.userData.showFavOnly || landmark.isFavorite{
                        NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                            LandmarkRow(landmark: landmark)
                        }
                    }
                }
            }
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
                .environmentObject(UserData()) /* for using data class with preview*/
        }
    }
}
