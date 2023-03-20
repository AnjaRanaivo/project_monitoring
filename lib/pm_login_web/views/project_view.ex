defmodule PmLoginWeb.ProjectView do
  alias PmLoginWeb.LiveComponent.{
    SurveyLiveComponent,
    TaskModalLive,
    PlusModalLive,
    ModifModalLive,
    ModifModalMenu,
    CommentsModalLive,
    CommentsModalMenu,
    SecondaryModalLive,
    # DeleteTaskModal,
    ClientModalRequestLive,
    DetailModalRequestLive,
    ProjectModalLive,
    TaskLiveComponent,
    ProjectLiveComponent,
    UserLiveComponent,
    SidebarLiveComponent,
    ActivityLiveComponent,
    CompletedActivitiesLiveComponent,
    TaskmajorTrueLiveComponent,
    TaskmajorFalseLiveComponent,
    CardTaskmajorFalseLiveComponent,
    CardTaskmajorTrueLiveComponent,
    CardTaskmajorAllLiveComponent,
    VoirModalLive,
    SidebarTrueLiveComponent,
    SidebarFalseLiveComponent,
    Loading
  }

  alias PmLogin.Monitoring
  alias PmLogin.Utilities
  alias Phoenix.LiveView.JS
  use PmLoginWeb, :view

  def hide_modal(js \\ %JS{}) do
    # js |> JS.show(transition: "fade-out", to: "#the_tree")
    js |> JS.hide(transition: "fade-out", to: "#the_board")
  end

  def hide_tree(js \\ %JS{}) do
    # js |> JS.show(transition: "fade-out", to: "#the_tree")
    js |> JS.toggle(to: "#the_tree")
    js |> JS.show(to: "#the_board")
  end

end
