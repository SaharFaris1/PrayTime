
import SwiftUI

struct PrayersView: View {
    @StateObject var vm = PrayerTimeViewModel()
    @State var timing: Timings?
    @State private var isSelected = false
    
    var body: some View {
        ZStack{
            Color.yel2
                .ignoresSafeArea()
            ScrollView{
                VStack{
                    
                    
                    Text("Prayers Time")
                        .font(.title)
                        .bold()
                    ZStack{
                        RoundedRectangle(cornerRadius: 20)
                            .fill(.ultraThinMaterial.opacity(0.1)).shadow(radius: 1)
                            .frame(width: 350, height: 80)
                        VStack{
                            Text("Date: \(vm.currentDate)")
                                .font(.title)
                            
                            
                            
                            
                                .frame(height: 30)
                        }}
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .fill(isSelected ? Color.yellow.opacity(0.3) : Color.yel.opacity(0.1))
                            .frame(width: 350, height: 80)
                        HStack {
                            Text("Fajr: \(vm.getPrayerTimeForToday()?.Fajr.replacingOccurrences(of: "(+03)", with: "") ?? "")")
                                .font(.title3)
                        }
                        .padding()
                    }
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .fill(isSelected ? Color.yellow.opacity(0.3) : Color.yel.opacity(0.1))
                            .frame(width: 350, height: 80)
                        HStack {
                            Text("Dhuhr: \(vm.getPrayerTimeForToday()?.Dhuhr.replacingOccurrences(of: "(+03)", with: "") ?? "")")
                                .font(.title3)
                        }
                        .padding()
                    }
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .fill(isSelected ? Color.yellow.opacity(0.3) : Color.yel.opacity(0.1))
                            .frame(width: 350, height: 80)
                        HStack {
                            Text("Asr: \(vm.getPrayerTimeForToday()?.Asr.replacingOccurrences(of: "(+03)", with: "") ?? "")")
                                .font(.title3)
                        }
                        .padding()
                    }
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .fill(isSelected ? Color.yellow.opacity(0.3) : Color.yel.opacity(0.1))
                            .frame(width: 350, height: 80)
                        HStack {
                            Text("Maghrib: \(vm.getPrayerTimeForToday()?.Maghrib.replacingOccurrences(of: "(+03)", with: "") ?? "")")
                                .font(.title3)
                        }
                        .padding()
                    }
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .fill(isSelected ? Color.yellow.opacity(0.3) : Color.yel.opacity(0.1))
                            .frame(width: 350, height: 80)
                        HStack {
                            Text("Isha: \(vm.getPrayerTimeForToday()?.Isha.replacingOccurrences(of: "(+03)", with: "") ?? "")")
                                .font(.title3)
                        }
                        .padding()
                    }
                    
                    
                    .onTapGesture {
                    isSelected.toggle()
                    }
             
                }
            }
            
            
            .onAppear(){
                vm.fetchPrayerTimes()
            }
            //                PraysView()
            
            
        }
    }}
    
#Preview {
    PrayersView()
}
