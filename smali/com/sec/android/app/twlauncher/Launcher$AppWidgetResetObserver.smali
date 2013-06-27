.class Lcom/sec/android/app/twlauncher/Launcher$AppWidgetResetObserver;
.super Landroid/database/ContentObserver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppWidgetResetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/Launcher;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 1
    .parameter

    .prologue
    .line 4106
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$AppWidgetResetObserver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    .line 4107
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4108
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 4112
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$AppWidgetResetObserver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #calls: Lcom/sec/android/app/twlauncher/Launcher;->onAppWidgetReset()V
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$2600(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 4113
    return-void
.end method
