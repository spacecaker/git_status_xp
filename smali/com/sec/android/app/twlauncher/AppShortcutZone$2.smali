.class Lcom/sec/android/app/twlauncher/AppShortcutZone$2;
.super Ljava/lang/Object;
.source "AppShortcutZone.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 571
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$2;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 573
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 574
    .local v2, tag:Ljava/lang/Object;
    if-eqz v2, :cond_0

    instance-of v3, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v3, :cond_0

    .line 575
    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-object v1, v0

    .line 576
    .local v1, app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$2;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    #getter for: Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;
    invoke-static {v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->access$000(Lcom/sec/android/app/twlauncher/AppShortcutZone;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 578
    iget-boolean v3, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->systemApp:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$2;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    #getter for: Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;
    invoke-static {v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->access$000(Lcom/sec/android/app/twlauncher/AppShortcutZone;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v3

    iget-object v4, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/Launcher;->showDeleteApplication(Ljava/lang/String;)V

    .line 584
    .end local v1           #app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_0
    :goto_0
    return-void

    .line 581
    .restart local v1       #app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$2;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    #getter for: Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;
    invoke-static {v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->access$000(Lcom/sec/android/app/twlauncher/AppShortcutZone;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v3

    iget-object v4, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/twlauncher/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)V

    goto :goto_0
.end method
