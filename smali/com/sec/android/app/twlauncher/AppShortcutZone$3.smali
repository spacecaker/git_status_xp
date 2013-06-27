.class Lcom/sec/android/app/twlauncher/AppShortcutZone$3;
.super Ljava/lang/Object;
.source "AppShortcutZone.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/AppShortcutZone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/AppShortcutZone;)V
    .locals 0
    .parameter

    .prologue
    .line 587
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$3;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 7
    .parameter "view"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 589
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$3;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    #getter for: Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;
    invoke-static {v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->access$000(Lcom/sec/android/app/twlauncher/AppShortcutZone;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v3

    if-nez v3, :cond_0

    .line 592
    invoke-virtual {p1, v6}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    move v3, v5

    .line 607
    :goto_0
    return v3

    .line 596
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 597
    .local v2, tag:Ljava/lang/Object;
    if-eqz v2, :cond_1

    instance-of v3, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v3, :cond_1

    .line 598
    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-object v1, v0

    .line 599
    .local v1, app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$3;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    #getter for: Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;
    invoke-static {v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->access$000(Lcom/sec/android/app/twlauncher/AppShortcutZone;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 600
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$3;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    #getter for: Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDragger:Lcom/sec/android/app/twlauncher/DragController;
    invoke-static {v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->access$100(Lcom/sec/android/app/twlauncher/AppShortcutZone;)Lcom/sec/android/app/twlauncher/DragController;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$3;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-interface {v3, p1, v4, v1, v6}, Lcom/sec/android/app/twlauncher/DragController;->startDrag(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V

    .end local v1           #app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_1
    :goto_1
    move v3, v5

    .line 607
    goto :goto_0

    .line 602
    .restart local v1       #app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$3;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    #getter for: Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDragger:Lcom/sec/android/app/twlauncher/DragController;
    invoke-static {v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->access$100(Lcom/sec/android/app/twlauncher/AppShortcutZone;)Lcom/sec/android/app/twlauncher/DragController;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$3;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-interface {v3, p1, v4, v1, v5}, Lcom/sec/android/app/twlauncher/DragController;->startDrag(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V

    .line 603
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$3;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    #getter for: Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;
    invoke-static {v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->access$000(Lcom/sec/android/app/twlauncher/AppShortcutZone;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->closeAllApplications()V

    goto :goto_1
.end method
