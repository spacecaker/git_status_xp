.class Lcom/sec/android/app/twlauncher/LauncherApplication$1;
.super Landroid/content/BroadcastReceiver;
.source "LauncherApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/twlauncher/LauncherApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/LauncherApplication;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/LauncherApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherApplication$1;->this$0:Lcom/sec/android/app/twlauncher/LauncherApplication;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherApplication$1;->this$0:Lcom/sec/android/app/twlauncher/LauncherApplication;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/app/twlauncher/LauncherApplication;->mSystemShuttingDown:Z

    .line 70
    return-void
.end method
