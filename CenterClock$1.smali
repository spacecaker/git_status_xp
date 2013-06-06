.class Lcom/android/systemui/statusbar/CenterClock$1;
.super Landroid/content/BroadcastReceiver;
.source "CenterClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/CenterClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/CenterClock;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/CenterClock;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/CenterClock$1;->this$0:Lcom/android/systemui/statusbar/CenterClock;

    .line 165
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 168
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 169
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    const-string v0, "time-zone"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    iget-object v1, p0, Lcom/android/systemui/statusbar/CenterClock$1;->this$0:Lcom/android/systemui/statusbar/CenterClock;

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    #setter for: Lcom/android/systemui/statusbar/CenterClock;->mCalendar:Ljava/util/Calendar;
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/CenterClock;->access$0(Lcom/android/systemui/statusbar/CenterClock;Ljava/util/Calendar;)V

    .line 172
    iget-object v0, p0, Lcom/android/systemui/statusbar/CenterClock$1;->this$0:Lcom/android/systemui/statusbar/CenterClock;

    #getter for: Lcom/android/systemui/statusbar/CenterClock;->mClockFormat:Ljava/text/SimpleDateFormat;
    invoke-static {v0}, Lcom/android/systemui/statusbar/CenterClock;->access$1(Lcom/android/systemui/statusbar/CenterClock;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/systemui/statusbar/CenterClock$1;->this$0:Lcom/android/systemui/statusbar/CenterClock;

    #getter for: Lcom/android/systemui/statusbar/CenterClock;->mClockFormat:Ljava/text/SimpleDateFormat;
    invoke-static {v0}, Lcom/android/systemui/statusbar/CenterClock;->access$1(Lcom/android/systemui/statusbar/CenterClock;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/CenterClock$1;->this$0:Lcom/android/systemui/statusbar/CenterClock;

    #getter for: Lcom/android/systemui/statusbar/CenterClock;->mCalendar:Ljava/util/Calendar;
    invoke-static {v1}, Lcom/android/systemui/statusbar/CenterClock;->access$2(Lcom/android/systemui/statusbar/CenterClock;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CenterClock$1;->this$0:Lcom/android/systemui/statusbar/CenterClock;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/CenterClock;->updateCenterClock()V

    .line 177
    return-void
.end method
