.class Lcom/android/systemui/statusbar/SignalClusterTextView$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "SignalClusterTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/SignalClusterTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/SignalClusterTextView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/SignalClusterTextView;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterTextView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/SignalClusterTextView;

    .line 70
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 71
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .prologue
    .line 74
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterTextView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/SignalClusterTextView;

    #getter for: Lcom/android/systemui/statusbar/SignalClusterTextView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/SignalClusterTextView;->access$000(Lcom/android/systemui/statusbar/SignalClusterTextView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 75
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "status_bar_signal"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 77
    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterTextView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/SignalClusterTextView;

    #calls: Lcom/android/systemui/statusbar/SignalClusterTextView;->updateSettings()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterTextView;->access$100(Lcom/android/systemui/statusbar/SignalClusterTextView;)V

    .line 81
    return-void
.end method
