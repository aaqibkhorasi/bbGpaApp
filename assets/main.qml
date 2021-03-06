// Default empty project template
import bb.cascades 1.0
import com.rim.example.custom 1.0

// creates one page with a label
TabbedPane {
    id: tabbedPane
    showTabsOnActionBar: false
    activeTab: courseListTab
    sidebarState: SidebarState.VisibleCompact
    Tab {
        id: courseListTab
        title: "Classes"
        CourseListPage {
        }
    } // end of first Tab

    Tab {
        id: courseTab
        title: "Course"
        CoursePage {
        } // end of second tab

    }
    Tab {
        id: summaryTab
        title: "Summary"
        SummaryPage {
        }

    } // end of third Tab
    onCreationCompleted: {
        // this slot is called when declarative scene is created
        // write post creation initialization here
        console.log("Page - onCreationCompleted()")

        // enable layout to adapt to the device rotation
        // don't forget to enable screen rotation in bar-bescriptor.xml (Application->Orientation->Auto-orient)
        OrientationSupport.supportedDisplayOrientation = SupportedDisplayOrientation.All;
    }
}// end of TabbedPane
