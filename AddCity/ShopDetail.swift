/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view showing the details for a landmark.
*/

import SwiftUI

struct ShopDetail: View {
    var addCity: AddCity

    var body: some View {
        VStack {
            MapView(coordinate: addCity.locationCoordinate)
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)

            CircleImage(image: addCity.image)
                .offset(x: 0, y: -130)
                .padding(.bottom, -130)

            VStack(alignment: .leading) {
                Text(addCity.name)
                    .font(.title)

                HStack(alignment: .top) {
                    Text(landmark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                }
            }
            .padding()

            Spacer()
        }
        .navigationBarTitle(Text(addCity.name), displayMode: .inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        ShopDetail(addCity: ShopData[0])
    }
}
