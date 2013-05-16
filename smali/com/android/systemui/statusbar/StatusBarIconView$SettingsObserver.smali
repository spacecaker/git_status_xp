.class Lcom/android/systemui/statusbar/StatusBarIconView$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "StatusBarIconView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/StatusBarIconView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/StatusBarIconView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/StatusBarIconView;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 299
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 300
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 301
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/StatusBarIconView;

    #getter for: Lcom/android/systemui/statusbar/StatusBarIconView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->access$000(Lcom/android/systemui/statusbar/StatusBarIconView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_notif_count"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 307
    return-void
.end method

.method public onChange(Z)V
    .locals 5
    .parameter "selfChange"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 315
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/StatusBarIconView;

    #getter for: Lcom/android/systemui/statusbar/StatusBarIconView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->access$300(Lcom/android/systemui/statusbar/StatusBarIconView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "status_bar_notif_count"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    :cond_0
    #setter for: Lcom/android/systemui/statusbar/StatusBarIconView;->mShowNotificationCount:Z
    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->access$202(Lcom/android/systemui/statusbar/StatusBarIconView;Z)Z

    .line 318
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/StatusBarIconView;

    #getter for: Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;
    invoke-static {v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->access$400(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v2

    #calls: Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;Z)Z
    invoke-static {v0, v2, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->access$500(Lcom/android/systemui/statusbar/StatusBarIconView;Lcom/android/internal/statusbar/StatusBarIcon;Z)Z

    .line 319
    return-void
.end method
