.class Lcom/android/systemui/statusbar/tablet/HoloClock$1;
.super Landroid/content/BroadcastReceiver;
.source "HoloClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/tablet/HoloClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/HoloClock;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/tablet/HoloClock;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/HoloClock$1;->this$0:Lcom/android/systemui/statusbar/tablet/HoloClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 176
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    const-string v2, "time-zone"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, tz:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/HoloClock$1;->this$0:Lcom/android/systemui/statusbar/tablet/HoloClock;

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v3

    #setter for: Lcom/android/systemui/statusbar/tablet/HoloClock;->mCalendar:Ljava/util/Calendar;
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/tablet/HoloClock;->access$202(Lcom/android/systemui/statusbar/tablet/HoloClock;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 180
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/HoloClock$1;->this$0:Lcom/android/systemui/statusbar/tablet/HoloClock;

    #getter for: Lcom/android/systemui/statusbar/tablet/HoloClock;->mClockFormat:Ljava/text/SimpleDateFormat;
    invoke-static {v2}, Lcom/android/systemui/statusbar/tablet/HoloClock;->access$300(Lcom/android/systemui/statusbar/tablet/HoloClock;)Ljava/text/SimpleDateFormat;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 181
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/HoloClock$1;->this$0:Lcom/android/systemui/statusbar/tablet/HoloClock;

    #getter for: Lcom/android/systemui/statusbar/tablet/HoloClock;->mClockFormat:Ljava/text/SimpleDateFormat;
    invoke-static {v2}, Lcom/android/systemui/statusbar/tablet/HoloClock;->access$300(Lcom/android/systemui/statusbar/tablet/HoloClock;)Ljava/text/SimpleDateFormat;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/HoloClock$1;->this$0:Lcom/android/systemui/statusbar/tablet/HoloClock;

    #getter for: Lcom/android/systemui/statusbar/tablet/HoloClock;->mCalendar:Ljava/util/Calendar;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/HoloClock;->access$200(Lcom/android/systemui/statusbar/tablet/HoloClock;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 184
    .end local v1           #tz:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/HoloClock$1;->this$0:Lcom/android/systemui/statusbar/tablet/HoloClock;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/tablet/HoloClock;->updateClock()V

    .line 185
    return-void
.end method
