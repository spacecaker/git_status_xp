.class Lcom/sec/android/app/twlauncher/MenuManager$5;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/MenuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/MenuManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/MenuManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1883
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager$5;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/4 v4, 0x2

    .line 1885
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 1886
    .local v2, tag:Ljava/lang/Object;
    if-eqz v2, :cond_0

    instance-of v3, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v3, :cond_0

    .line 1887
    sget-boolean v3, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-eqz v3, :cond_2

    .line 1888
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager$5;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    #getter for: Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I
    invoke-static {v3}, Lcom/sec/android/app/twlauncher/MenuManager;->access$600(Lcom/sec/android/app/twlauncher/MenuManager;)I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 1889
    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-object v1, v0

    .line 1890
    .local v1, app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iget-boolean v3, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->systemApp:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager$5;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    #getter for: Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;
    invoke-static {v3}, Lcom/sec/android/app/twlauncher/MenuManager;->access$300(Lcom/sec/android/app/twlauncher/MenuManager;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v3

    iget-object v4, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/Launcher;->showDeleteApplication(Ljava/lang/String;)V

    .line 1908
    .end local v1           #app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v2           #tag:Ljava/lang/Object;
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 1892
    .restart local v2       #tag:Ljava/lang/Object;
    .restart local p1
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager$5;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager$5;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    #getter for: Lcom/sec/android/app/twlauncher/MenuManager;->mDelayedAppClickRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/sec/android/app/twlauncher/MenuManager;->access$700(Lcom/sec/android/app/twlauncher/MenuManager;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1893
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager$5;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    check-cast v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .end local v2           #tag:Ljava/lang/Object;
    #setter for: Lcom/sec/android/app/twlauncher/MenuManager;->mClickedApp:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-static {v3, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->access$502(Lcom/sec/android/app/twlauncher/MenuManager;Lcom/sec/android/app/twlauncher/ApplicationInfo;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 1894
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager$5;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager$5;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    #getter for: Lcom/sec/android/app/twlauncher/MenuManager;->mDelayedAppClickRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/sec/android/app/twlauncher/MenuManager;->access$700(Lcom/sec/android/app/twlauncher/MenuManager;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v5, 0xc8

    invoke-virtual {v3, v4, v5, v6}, Lcom/sec/android/app/twlauncher/MenuManager;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1895
    check-cast p1, Lcom/sec/android/app/twlauncher/MenuItemView;

    .end local p1
    const/high16 v3, 0x4334

    const/high16 v4, 0x43b4

    invoke-virtual {p1, v3, v4}, Lcom/sec/android/app/twlauncher/MenuItemView;->applyRotation(FF)V

    goto :goto_0

    .line 1898
    .restart local v2       #tag:Ljava/lang/Object;
    .restart local p1
    :cond_2
    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-object v1, v0

    .line 1899
    .restart local v1       #app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager$5;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    #getter for: Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I
    invoke-static {v3}, Lcom/sec/android/app/twlauncher/MenuManager;->access$600(Lcom/sec/android/app/twlauncher/MenuManager;)I

    move-result v3

    if-ne v3, v4, :cond_3

    .line 1901
    iget-boolean v3, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->systemApp:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager$5;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    #getter for: Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;
    invoke-static {v3}, Lcom/sec/android/app/twlauncher/MenuManager;->access$300(Lcom/sec/android/app/twlauncher/MenuManager;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v3

    iget-object v4, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/Launcher;->showDeleteApplication(Ljava/lang/String;)V

    goto :goto_0

    .line 1904
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager$5;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    #getter for: Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;
    invoke-static {v3}, Lcom/sec/android/app/twlauncher/MenuManager;->access$300(Lcom/sec/android/app/twlauncher/MenuManager;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v3

    iget-object v4, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/twlauncher/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)V

    goto :goto_0
.end method
