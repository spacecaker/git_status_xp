.class Lcom/android/systemui/statusbar/policy/Clock$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "Clock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/Clock;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/Clock;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/Clock$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    .line 73
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 74
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 77
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    #getter for: Lcom/android/systemui/statusbar/policy/Clock;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/Clock;->access$000(Lcom/android/systemui/statusbar/policy/Clock;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 78
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "status_bar_am_pm"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 80
    const-string v1, "status_bar_clock"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 82
    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    #calls: Lcom/android/systemui/statusbar/policy/Clock;->updateSettings()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/Clock;->access$100(Lcom/android/systemui/statusbar/policy/Clock;)V

    .line 86
    return-void
.end method
