.class Lcom/android/systemui/statusbar/SignalClusterView$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "SignalClusterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/SignalClusterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/SignalClusterView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    .line 63
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 64
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .prologue
    .line 67
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    #getter for: Lcom/android/systemui/statusbar/SignalClusterView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/SignalClusterView;->access$000(Lcom/android/systemui/statusbar/SignalClusterView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 68
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "status_bar_signal"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 70
    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    #calls: Lcom/android/systemui/statusbar/SignalClusterView;->updateSettings()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterView;->access$100(Lcom/android/systemui/statusbar/SignalClusterView;)V

    .line 75
    return-void
.end method
