.class final Lcom/android/systemui/statusbar/tablet/SettingsView$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "SettingsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/tablet/SettingsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/SettingsView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/tablet/SettingsView;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/SettingsView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/tablet/SettingsView;

    .line 93
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 94
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .prologue
    .line 97
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/SettingsView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/tablet/SettingsView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/SettingsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 98
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "expanded_widget_buttons_tablet"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/SettingsView$SettingsObserver;->updateToggleContainer()V

    .line 101
    return-void
.end method

.method public onChange(Z)V
    .locals 0
    .parameter "selfChange"

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/SettingsView$SettingsObserver;->updateToggleContainer()V

    .line 106
    return-void
.end method

.method updateToggleContainer()V
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/SettingsView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/tablet/SettingsView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/SettingsView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/tablet/SettingsView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/SettingsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "expanded_widget_buttons_tablet"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/systemui/statusbar/tablet/SettingsView;->mToggleContainer:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/tablet/SettingsView;->access$002(Lcom/android/systemui/statusbar/tablet/SettingsView;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    return-void
.end method
