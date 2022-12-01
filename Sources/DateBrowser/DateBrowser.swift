
import SwiftUI

public struct DateBrowser: View {
  
  @Binding var selectedDate: Date
  
  public var body: some View {
    HStack {
      Button {
        
      } label: {
        Image(systemName: "chevron.backward.to.line")
      }
      Button {
        
      } label: {
        Image(systemName: "chevron.left")
      }
      Text(selectedDate.formatted(date: .abbreviated, time: .omitted))
      Button {
        
      } label: {
        Image(systemName: "chevron.right")
      }
      Button {
        
      } label: {
        Image(systemName: "chevron.forward.to.line")
      }
      Button {
        
      } label: {
        Image(systemName: "calendar")
      }
      Button {
        
      } label: {
        Image(systemName: "calendar.day.timeline.left")
      }
    }
  }
  
  public init(selectedDateBinding: Binding<Date>) {
    _selectedDate = selectedDateBinding
  }
}

extension DateBrowser {
  func adjustDate(by magnitude: Int, timeUnit: Int) {}
}

struct DateBrowser_Previews: PreviewProvider {
  
  static var previews: some View {
    DateBrowser(selectedDateBinding: .constant(Date()))
  }
}

