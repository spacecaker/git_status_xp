.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 256
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 257
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 258
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 261
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 262
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "status_bar_brightness_control"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 264
    const-string v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 266
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$SettingsObserver;->update()V

    .line 267
    return-void
.end method

.method public onChange(Z)V
    .locals 0
    .parameter "selfChange"

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$SettingsObserver;->update()V

    .line 272
    return-void
.end method

.method public update()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 275
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 276
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const-string v1, "status_bar_brightness_control"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    #setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessControl:Z
    invoke-static {v4, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$102(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 278
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const-string v4, "screen_brightness_mode"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    :goto_1
    #setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAutoBrightness:Z
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$202(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 281
    return-void

    :cond_0
    move v1, v3

    .line 276
    goto :goto_0

    :cond_1
    move v2, v3

    .line 278
    goto :goto_1
.end method
