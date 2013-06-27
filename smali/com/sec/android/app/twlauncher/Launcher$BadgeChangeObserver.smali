.class Lcom/sec/android/app/twlauncher/Launcher$BadgeChangeObserver;
.super Landroid/database/ContentObserver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BadgeChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/Launcher;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 1
    .parameter

    .prologue
    .line 4120
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$BadgeChangeObserver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    .line 4121
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4122
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 4126
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$BadgeChangeObserver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mIsActive:Z
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$300(Lcom/sec/android/app/twlauncher/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4127
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$BadgeChangeObserver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$2800(Lcom/sec/android/app/twlauncher/Launcher;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$BadgeChangeObserver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mRunBadgeChanged:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Launcher;->access$2700(Lcom/sec/android/app/twlauncher/Launcher;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4128
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$BadgeChangeObserver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$2800(Lcom/sec/android/app/twlauncher/Launcher;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$BadgeChangeObserver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mRunBadgeChanged:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Launcher;->access$2700(Lcom/sec/android/app/twlauncher/Launcher;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4132
    :goto_0
    return-void

    .line 4130
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$BadgeChangeObserver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/app/twlauncher/Launcher;->mIsChangedBadge:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->access$2902(Lcom/sec/android/app/twlauncher/Launcher;Z)Z

    goto :goto_0
.end method
