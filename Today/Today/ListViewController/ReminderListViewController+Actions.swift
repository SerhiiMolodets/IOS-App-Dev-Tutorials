//
//  ReminderListViewController+Actions.swift
//  Today
//
//  Created by Сергей Молодец on 02.02.2023.
//

import UIKit

extension ReminderListViewController {
    @objc func didPressDoneButton(_ sender: ReminderDoneButton) {
        guard let id = sender.id else { return }
        completeReminder(withId: id)
    }
}
