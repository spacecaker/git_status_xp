.class Lcom/android/systemui/statusbar/CenterClock$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "CenterClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/CenterClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/CenterClock;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/CenterClock;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/systemui/statusbar/CenterClock$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/CenterClock;

    .line 78
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 82
    iget-object v0, p0, Lcom/android/systemui/statusbar/CenterClock$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/CenterClock;

    #getter for: Lcom/android/systemui/statusbar/CenterClock;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/statusbar/CenterClock;->access$3(Lcom/android/systemui/statusbar/CenterClock;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 84
    const-string v1, "status_bar_am_pm"

    .line 83
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 86
    const-string v1, "status_bar_clock"

    .line 85
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 88
    const-string v1, "status_bar_centerclock"

    .line 87
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 90
    const-string v1, "status_bar_clockcolor"

    .line 89
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 92
    const-string v1, "tweaks_clock_size"

    .line 91
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 94
    const-string v1, "tweaks_clock_text_font"

    .line 93
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 95
    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/CenterClock$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/CenterClock;

    #calls: Lcom/android/systemui/statusbar/CenterClock;->updateSettings()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/CenterClock;->access$4(Lcom/android/systemui/statusbar/CenterClock;)V

    .line 99
    iget-object v0, p0, Lcom/android/systemui/statusbar/CenterClock$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/CenterClock;

    #calls: Lcom/android/systemui/statusbar/CenterClock;->updateTypeface()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/CenterClock;->access$5(Lcom/android/systemui/statusbar/CenterClock;)V

    .line 100
    return-void
.end method
