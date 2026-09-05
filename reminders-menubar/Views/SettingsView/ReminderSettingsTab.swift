import SwiftUI

struct ReminderSettingsTab: View {
    @ObservedObject var userPreferences = UserPreferences.shared

    var body: some View {
        Form {
            SettingsSection(rmbLocalized(.newReminderSettingsLabel)) {
                Toggle(
                    rmbLocalized(.newReminderAutoSuggestTodayOption),
                    isOn: $userPreferences.autoSuggestToday
                )
            }

            SettingsDivider()

            SettingsSection(rmbLocalized(.reminderDisplaySettingsLabel)) {
                Toggle(
                    rmbLocalized(.showExternalLinksInReminderItemOption),
                    isOn: $userPreferences.showExternalLinksInReminderItem
                )

                Text(rmbLocalized(.showExternalLinksInReminderItemNote))
                    .modifier(SettingsNoteStyle())
                    .padding(.leading, 20)
            }

            SettingsDivider()

            SettingsSection(rmbLocalized(.completionSettingsLabel)) {
                Toggle(
                    rmbLocalized(.completionAnimationSettingsOption),
                    isOn: $userPreferences.completionAnimationEnabled
                )

                Text(rmbLocalized(.completionAnimationSettingsNote))
                    .modifier(SettingsNoteStyle())
                    .padding(.leading, 20)
            }
        }
        .padding(20)
    }
}

#Preview {
    ReminderSettingsTab()
}
