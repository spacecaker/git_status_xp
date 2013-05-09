.class Lcom/android/systemui/statusbar/tablet/HoloClock$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "HoloClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/tablet/HoloClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/HoloClock;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/tablet/HoloClock;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/HoloClock$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/tablet/HoloClock;

    .line 79
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 80
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 83
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/HoloClock$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/tablet/HoloClock;

    #getter for: Lcom/android/systemui/statusbar/tablet/HoloClock;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/tablet/HoloClock;->access$000(Lcom/android/systemui/statusbar/tablet/HoloClock;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 84
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "status_bar_am_pm"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 86
    const-string v1, "status_bar_clock"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 88
    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/HoloClock$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/tablet/HoloClock;

    #calls: Lcom/android/systemui/statusbar/tablet/HoloClock;->updateSettings()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/tablet/HoloClock;->access$100(Lcom/android/systemui/statusbar/tablet/HoloClock;)V

    .line 92
    return-void
.end method
