import SwiftUI

enum SettingsTab: Hashable {
    case general
    case menuBar
    case sections
    case reminders
    case copy
    case keyboard
    case about
}

struct SettingsView: View {
    @ObservedObject private var coordinator = SettingsCoordinator.shared

    var body: some View {
        TabView(selection: $coordinator.selectedTab) {
            GeneralSettingsTab()
                .tabItem {
                    Label(rmbLocalized(.generalSettingsTab), rmbSymbol: .gearshape)
                }
                .tag(SettingsTab.general)

            MenuBarSettingsTab()
                .tabItem {
                    Label(rmbLocalized(.menuBarSettingsTab), rmbSymbol: .menubarRectangle)
                }
                .tag(SettingsTab.menuBar)

            SectionsSettingsTab()
                .tabItem {
                    Label(rmbLocalized(.sectionsSettingsTab), rmbSymbol: .textBelowFolder)
                }
                .tag(SettingsTab.sections)

            ReminderSettingsTab()
                .tabItem {
                    Label(rmbLocalized(.remindersSettingsTab), rmbSymbol: .listBullet)
                }
                .tag(SettingsTab.reminders)

            CopySettingsTab()
                .tabItem {
                    Label(rmbLocalized(.copySettingsTab), rmbSymbol: .docOnDoc)
                }
                .tag(SettingsTab.copy)

            KeyboardSettingsTab()
                .tabItem {
                    Label(rmbLocalized(.keyboardSettingsTab), rmbSymbol: .keyboard)
                }
                .tag(SettingsTab.keyboard)

            AboutSettingsTab()
                .tabItem {
                    Label(rmbLocalized(.aboutSettingsTab), rmbSymbol: .infoCircle)
                }
                .tag(SettingsTab.about)
        }
        .frame(width: 620)
    }
}

#Preview {
    SettingsView()
}
