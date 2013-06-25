.class Lcom/sec/android/app/twlauncher/LauncherApplication$2;
.super Landroid/database/ContentObserver;
.source "LauncherApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/LauncherApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/LauncherApplication;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/LauncherApplication;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherApplication$2;->this$0:Lcom/sec/android/app/twlauncher/LauncherApplication;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherApplication$2;->this$0:Lcom/sec/android/app/twlauncher/LauncherApplication;

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/LauncherApplication;->mSystemShuttingDown:Z

    if-eqz v0, :cond_0

    .line 94
    const-string v0, "LauncherApplication"

    const-string v1, "Ignoring favorite change, because the system is shutting down"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherApplication$2;->this$0:Lcom/sec/android/app/twlauncher/LauncherApplication;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherApplication;->mModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherApplication$2;->this$0:Lcom/sec/android/app/twlauncher/LauncherApplication;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->startLoader(Landroid/content/Context;Z)V

    goto :goto_0
.end method
