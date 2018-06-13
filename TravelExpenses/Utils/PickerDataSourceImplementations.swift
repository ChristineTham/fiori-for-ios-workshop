//
//  ReportsPickerDataSource.swift
//  TravelExpenses
//
//  Created by Stadelman, Stan on 6/11/18.
//  Copyright © 2018 SAP. All rights reserved.
//

import UIKit
import SAPFiori

class ReportsPickerDataSource: BaseEntityTypePickerDataSource<ExpenseReportItemType> {
    
    override func listPickerTableView(_ tableView: UITableView, cellForRowAt index: Int, isFiltered: Bool) -> UITableViewCell {
        let cell = super.listPickerTableView(tableView, cellForRowAt: index, isFiltered: false) as! FUIObjectTableViewCell
        let entity = self.entity(at: index)
        cell.subheadlineText = entity.reportname
        return cell
    }
}


class CurrencyPickerDataSource: BaseEntityTypePickerDataSource<CurrencyType> {
    
    override func listPickerTableView(_ tableView: UITableView, cellForRowAt index: Int, isFiltered: Bool) -> UITableViewCell {
        let cell = super.listPickerTableView(tableView, cellForRowAt: index, isFiltered: false) as! FUIObjectTableViewCell
        let entity = self.entity(at: index)
        cell.subheadlineText = entity.currencyid
        return cell
    }
    
}

class PaymentTypePickerDataSource: BaseEntityTypePickerDataSource<PaymentType> {
    
    override func listPickerTableView(_ tableView: UITableView, cellForRowAt index: Int, isFiltered: Bool) -> UITableViewCell {
        let cell = super.listPickerTableView(tableView, cellForRowAt: index, isFiltered: false) as! FUIObjectTableViewCell
        let entity = self.entity(at: index)
        cell.subheadlineText = entity.paymenttypeid
        return cell
    }
}
class ExpenseTypePickerDataSource: BaseEntityTypePickerDataSource<ExpenseType> {
    
    override func listPickerTableView(_ tableView: UITableView, cellForRowAt index: Int, isFiltered: Bool) -> UITableViewCell {
        let cell = super.listPickerTableView(tableView, cellForRowAt: index, isFiltered: false) as! FUIObjectTableViewCell
        let entity = self.entity(at: index)
        cell.subheadlineText = entity.description
        return cell
    }
}
