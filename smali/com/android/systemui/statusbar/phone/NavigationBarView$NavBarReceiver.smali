.class public Lcom/android/systemui/statusbar/phone/NavigationBarView$NavBarReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NavigationBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NavBarReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavBarReceiver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 155
    const-string v2, "edit"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 156
    .local v0, edit:Z
    const-string v2, "save"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 157
    .local v1, save:Z
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$100()Z

    move-result v2

    if-eq v0, v2, :cond_0

    .line 158
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$102(Z)Z

    .line 159
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$100()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 160
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavBarReceiver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->toggleRecentListener(Z)V

    .line 161
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavBarReceiver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    #getter for: Lcom/android/systemui/statusbar/phone/NavigationBarView;->mEditBar:Lcom/android/systemui/statusbar/phone/NavbarEditor;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$200(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Lcom/android/systemui/statusbar/phone/NavbarEditor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavbarEditor;->setupListeners()V

    .line 162
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavBarReceiver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    #getter for: Lcom/android/systemui/statusbar/phone/NavigationBarView;->mEditBar:Lcom/android/systemui/statusbar/phone/NavbarEditor;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$200(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Lcom/android/systemui/statusbar/phone/NavbarEditor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavbarEditor;->updateKeys()V

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavBarReceiver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    #getter for: Lcom/android/systemui/statusbar/phone/NavigationBarView;->mEditBar:Lcom/android/systemui/statusbar/phone/NavbarEditor;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$200(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Lcom/android/systemui/statusbar/phone/NavbarEditor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavbarEditor;->dismissDialog()V

    .line 165
    if-eqz v1, :cond_2

    .line 166
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavBarReceiver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    #getter for: Lcom/android/systemui/statusbar/phone/NavigationBarView;->mEditBar:Lcom/android/systemui/statusbar/phone/NavbarEditor;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$200(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Lcom/android/systemui/statusbar/phone/NavbarEditor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavbarEditor;->saveKeys()V

    .line 168
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavBarReceiver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    #getter for: Lcom/android/systemui/statusbar/phone/NavigationBarView;->mEditBar:Lcom/android/systemui/statusbar/phone/NavbarEditor;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$200(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Lcom/android/systemui/statusbar/phone/NavbarEditor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavbarEditor;->reInflate()V

    .line 169
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavBarReceiver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    new-instance v4, Lcom/android/systemui/statusbar/phone/NavbarEditor;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavBarReceiver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v5, 0x7f0e0018

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavBarReceiver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Lcom/android/systemui/statusbar/phone/NavbarEditor;-><init>(Landroid/view/ViewGroup;Ljava/lang/Boolean;)V

    #setter for: Lcom/android/systemui/statusbar/phone/NavigationBarView;->mEditBar:Lcom/android/systemui/statusbar/phone/NavbarEditor;
    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$202(Lcom/android/systemui/statusbar/phone/NavigationBarView;Lcom/android/systemui/statusbar/phone/NavbarEditor;)Lcom/android/systemui/statusbar/phone/NavbarEditor;

    .line 170
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavBarReceiver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    #getter for: Lcom/android/systemui/statusbar/phone/NavigationBarView;->mEditBar:Lcom/android/systemui/statusbar/phone/NavbarEditor;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$200(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Lcom/android/systemui/statusbar/phone/NavbarEditor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavbarEditor;->updateKeys()V

    .line 171
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavBarReceiver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->toggleRecentListener(Z)V

    .line 172
    if-eqz v1, :cond_3

    .line 173
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavBarReceiver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    #getter for: Lcom/android/systemui/statusbar/phone/NavigationBarView;->mEditBar:Lcom/android/systemui/statusbar/phone/NavbarEditor;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$200(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Lcom/android/systemui/statusbar/phone/NavbarEditor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavBarReceiver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/NavbarEditor;->updateLowLights(Landroid/view/View;)V

    .line 175
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavBarReceiver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v3, 0x7f0e0011

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    new-instance v3, Landroid/animation/LayoutTransition;

    invoke-direct {v3}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_0
.end method
