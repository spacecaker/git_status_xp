.class Lcom/android/internal/policy/impl/ClockWidget$Weather$2;
.super Landroid/content/BroadcastReceiver;
.source "ClockWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/ClockWidget$Weather;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/ClockWidget$Weather;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/ClockWidget$Weather;)V
    .locals 0
    .parameter

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather$2;->this$0:Lcom/android/internal/policy/impl/ClockWidget$Weather;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v4, "ClockWidget"

    .line 263
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather$2;->this$0:Lcom/android/internal/policy/impl/ClockWidget$Weather;

    #getter for: Lcom/android/internal/policy/impl/ClockWidget$Weather;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->access$100(Lcom/android/internal/policy/impl/ClockWidget$Weather;)Landroid/os/Handler;

    move-result-object v1

    if-nez v1, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.sec.android.widgetapp.accuweatherdaemon.action.CHANGE_SETTING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 266
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather$2;->this$0:Lcom/android/internal/policy/impl/ClockWidget$Weather;

    #getter for: Lcom/android/internal/policy/impl/ClockWidget$Weather;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->access$100(Lcom/android/internal/policy/impl/ClockWidget$Weather;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather$2;->this$0:Lcom/android/internal/policy/impl/ClockWidget$Weather;

    #getter for: Lcom/android/internal/policy/impl/ClockWidget$Weather;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->access$100(Lcom/android/internal/policy/impl/ClockWidget$Weather;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x12c0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 267
    const-string v1, "ClockWidget"

    const-string v1, "Receice ACTION_WEATHER_SETTING_CHANGED"

    invoke-static {v4, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 268
    :cond_2
    const-string v1, "com.sec.android.widgetapp.accuweatherdaemon.action.WEATHER_DATE_SYNC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather$2;->this$0:Lcom/android/internal/policy/impl/ClockWidget$Weather;

    #getter for: Lcom/android/internal/policy/impl/ClockWidget$Weather;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->access$100(Lcom/android/internal/policy/impl/ClockWidget$Weather;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather$2;->this$0:Lcom/android/internal/policy/impl/ClockWidget$Weather;

    #getter for: Lcom/android/internal/policy/impl/ClockWidget$Weather;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->access$100(Lcom/android/internal/policy/impl/ClockWidget$Weather;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x12c1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 270
    const-string v1, "ClockWidget"

    const-string v1, "Receice ACTION_WEATHER_DATE_SYNC"

    invoke-static {v4, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
