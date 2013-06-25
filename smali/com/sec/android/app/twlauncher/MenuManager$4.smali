.class Lcom/sec/android/app/twlauncher/MenuManager$4;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 1868
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager$4;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1870
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$4;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    #getter for: Lcom/sec/android/app/twlauncher/MenuManager;->mClickedApp:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->access$500(Lcom/sec/android/app/twlauncher/MenuManager;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1871
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$4;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    #getter for: Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->access$600(Lcom/sec/android/app/twlauncher/MenuManager;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1873
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$4;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    #getter for: Lcom/sec/android/app/twlauncher/MenuManager;->mClickedApp:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->access$500(Lcom/sec/android/app/twlauncher/MenuManager;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->systemApp:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$4;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    #getter for: Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->access$300(Lcom/sec/android/app/twlauncher/MenuManager;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager$4;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    #getter for: Lcom/sec/android/app/twlauncher/MenuManager;->mClickedApp:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->access$500(Lcom/sec/android/app/twlauncher/MenuManager;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->showDeleteApplication(Ljava/lang/String;)V

    .line 1879
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$4;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    #setter for: Lcom/sec/android/app/twlauncher/MenuManager;->mClickedApp:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-static {v0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->access$502(Lcom/sec/android/app/twlauncher/MenuManager;Lcom/sec/android/app/twlauncher/ApplicationInfo;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 1880
    return-void

    .line 1876
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$4;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    #getter for: Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->access$300(Lcom/sec/android/app/twlauncher/MenuManager;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager$4;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    #getter for: Lcom/sec/android/app/twlauncher/MenuManager;->mClickedApp:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->access$500(Lcom/sec/android/app/twlauncher/MenuManager;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)V

    goto :goto_0
.end method
