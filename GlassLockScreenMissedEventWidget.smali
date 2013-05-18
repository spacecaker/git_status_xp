.class public Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;
.super Landroid/widget/RelativeLayout;
.source "GlassLockScreenMissedEventWidget.java"

# interfaces
.implements Lcom/android/internal/widget/SlidingTab$OnTriggerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$NotiMode;
    }
.end annotation


# static fields
.field private static final MISSED_EVENT_ARRIVED:Ljava/lang/String; = "com.android.server.NotificationManagerService.NotificationArrived"

.field private static final MISSED_EVENT_REMOVED:Ljava/lang/String; = "com.android.server.NotificationManagerService.NotificationRemoved"

.field private static final TAG:Ljava/lang/String; = "GlassLockScreenMissedEventWidget"


# instance fields
.field private final CALL_PKG:Ljava/lang/String;

.field private final DEBUG:Z

.field private final DEFAULT_MISSED_EVENT_COUNT_TEXT:Ljava/lang/String;

.field private final EMAIL_PKG:Ljava/lang/String;

.field private final MISSED_EVENT_UPDATE:I

.field private MSG_PKG:Ljava/lang/String;

.field private final REQ_INDEX_CALL_EMAIL:I

.field private final REQ_INDEX_MSG:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mHandler:Landroid/os/Handler;

.field private mMissedCallCount:I

.field private mMissedCallNotiInfo:Landroid/app/NotificationInfo;

.field private mMissedMsgCount:I

.field private mSelector:Lcom/android/internal/widget/SlidingTab;

.field private mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 5
    .parameter "context"
    .parameter "callback"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 81
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 40
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->DEBUG:Z

    .line 48
    const-string v2, "com.android.phone"

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->CALL_PKG:Ljava/lang/String;

    .line 49
    const-string v2, "com.android.mms"

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->MSG_PKG:Ljava/lang/String;

    .line 50
    const-string v2, "com.android.email"

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->EMAIL_PKG:Ljava/lang/String;

    .line 55
    const/16 v2, 0x12c2

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->MISSED_EVENT_UPDATE:I

    .line 56
    iput v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->REQ_INDEX_CALL_EMAIL:I

    .line 57
    const/16 v2, 0x7b

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->REQ_INDEX_MSG:I

    .line 59
    iput v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mMissedCallCount:I

    .line 60
    iput v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mMissedMsgCount:I

    .line 61
    const-string v2, "0"

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->DEFAULT_MISSED_EVENT_COUNT_TEXT:Ljava/lang/String;

    .line 67
    new-instance v2, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$1;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mHandler:Landroid/os/Handler;

    .line 83
    iput-object p2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 85
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 86
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x1090081

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 88
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 89
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "com.android.server.NotificationManagerService.NotificationArrived"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    const-string v2, "com.android.server.NotificationManagerService.NotificationRemoved"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    new-instance v2, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$2;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 103
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 106
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->init()V

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private init()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v2, 0x1

    const-string v5, "0"

    .line 117
    const-string v0, "GlassLockScreenMissedEventWidget"

    const-string v1, "Controller Initiation Running!!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const v0, 0x10201fa

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/SlidingTab;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    .line 121
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v0, v2, v2}, Lcom/android/internal/widget/SlidingTab;->setHoldAfterTrigger(ZZ)V

    .line 123
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    const v1, 0x10803c1

    const v2, 0x10803b5

    const v3, 0x10801f9

    const v4, 0x108020f

    const-string v6, "0"

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/SlidingTab;->setLeftTabResources(IIIILjava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    const v1, 0x10803de

    const v2, 0x10803b6

    const v3, 0x1080205

    const v4, 0x108021a

    const-string v6, "0"

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/SlidingTab;->setRightTabResources(IIIILjava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/SlidingTab;->setOnTriggerListener(Lcom/android/internal/widget/SlidingTab$OnTriggerListener;)V

    .line 132
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SlidingTab;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v0, v7}, Lcom/android/internal/widget/SlidingTab;->setLeftVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v0, v7}, Lcom/android/internal/widget/SlidingTab;->setRightVisibility(I)V

    .line 136
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->updateMissedEvent()V

    .line 138
    return-void
.end method

.method private sendIntent(Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$NotiMode;)V
    .locals 4
    .parameter "notiMode"

    .prologue
    .line 265
    const/4 v0, 0x0

    .line 266
    .local v0, intent:Landroid/app/PendingIntent;
    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$NotiMode;

    if-ne p1, v1, :cond_2

    .line 267
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    iget-object v1, v1, Landroid/app/NotificationInfo;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 268
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    iget-object v0, v1, Landroid/app/NotificationInfo;->contentIntent:Landroid/app/PendingIntent;

    .line 276
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 278
    :try_start_0
    const-string v1, "GlassLockScreenMissedEventWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendintent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :cond_1
    :goto_1
    return-void

    .line 270
    :cond_2
    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$NotiMode;

    if-eq p1, v1, :cond_3

    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$NotiMode;->MissedEMail:Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$NotiMode;

    if-ne p1, v1, :cond_0

    .line 271
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    iget-object v1, v1, Landroid/app/NotificationInfo;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 272
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    iget-object v0, v1, Landroid/app/NotificationInfo;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_0

    .line 280
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private updateMissedEvent()V
    .locals 12

    .prologue
    const/16 v5, 0x3e7

    const/4 v11, 0x4

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 182
    const/4 v2, 0x0

    .line 183
    .local v2, nCallCount:I
    const/4 v3, 0x0

    .line 184
    .local v3, nMsgCount:I
    const/4 v0, 0x0

    .line 185
    .local v0, bUpdatedCallCount:Z
    const/4 v1, 0x0

    .line 187
    .local v1, bUpdatedMsgCount:Z
    sget-object v4, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$NotiMode;

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->getNumMissedEvent(Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$NotiMode;)I

    move-result v2

    .line 188
    sget-object v4, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$NotiMode;

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->getNumMissedEvent(Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$NotiMode;)I

    move-result v3

    .line 190
    iget v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mMissedCallCount:I

    if-eq v2, v4, :cond_3

    if-ltz v2, :cond_3

    .line 191
    const/4 v0, 0x1

    .line 192
    if-le v2, v5, :cond_2

    .line 193
    iput v5, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mMissedCallCount:I

    .line 199
    :goto_0
    iget v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mMissedMsgCount:I

    if-eq v3, v4, :cond_5

    if-ltz v2, :cond_5

    .line 200
    const/4 v1, 0x1

    .line 201
    if-le v3, v5, :cond_4

    .line 202
    iput v5, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mMissedMsgCount:I

    .line 208
    :goto_1
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    .line 209
    :cond_0
    iget v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mMissedCallCount:I

    if-ne v4, v10, :cond_6

    .line 210
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    const v5, 0x104050c

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/SlidingTab;->setLeftHintText(I)V

    .line 213
    :goto_2
    iget v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mMissedMsgCount:I

    if-ne v4, v10, :cond_7

    .line 214
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    const v5, 0x104050d

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/SlidingTab;->setRightHintText(I)V

    .line 218
    :goto_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    iget v5, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mMissedCallCount:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/SlidingTab;->setLeftIconText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    iget v5, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mMissedMsgCount:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/SlidingTab;->setRightIconText(Ljava/lang/CharSequence;)V

    .line 221
    iget v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mMissedCallCount:I

    if-lez v4, :cond_8

    iget v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mMissedMsgCount:I

    if-lez v4, :cond_8

    .line 222
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v4, v9}, Lcom/android/internal/widget/SlidingTab;->setLeftVisibility(I)V

    .line 223
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v4, v9}, Lcom/android/internal/widget/SlidingTab;->setRightVisibility(I)V

    .line 238
    :cond_1
    :goto_4
    return-void

    .line 195
    :cond_2
    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mMissedCallCount:I

    goto :goto_0

    .line 197
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 204
    :cond_4
    iput v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mMissedMsgCount:I

    goto :goto_1

    .line 206
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 212
    :cond_6
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x104050e

    new-array v7, v10, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mMissedCallCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/SlidingTab;->setLeftHintText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 216
    :cond_7
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x104050f

    new-array v7, v10, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mMissedMsgCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/SlidingTab;->setRightHintText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 225
    :cond_8
    iget v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mMissedCallCount:I

    if-lez v4, :cond_9

    .line 226
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v4, v9}, Lcom/android/internal/widget/SlidingTab;->setLeftVisibility(I)V

    .line 227
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v4, v11}, Lcom/android/internal/widget/SlidingTab;->setRightVisibility(I)V

    goto :goto_4

    .line 228
    :cond_9
    iget v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mMissedMsgCount:I

    if-lez v4, :cond_a

    .line 229
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v4, v11}, Lcom/android/internal/widget/SlidingTab;->setLeftVisibility(I)V

    .line 230
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v4, v9}, Lcom/android/internal/widget/SlidingTab;->setRightVisibility(I)V

    goto :goto_4

    .line 232
    :cond_a
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v4, v11}, Lcom/android/internal/widget/SlidingTab;->setLeftVisibility(I)V

    .line 233
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v4, v11}, Lcom/android/internal/widget/SlidingTab;->setRightVisibility(I)V

    goto :goto_4
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 142
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 144
    const-string v0, "GlassLockScreenMissedEventWidget"

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void
.end method

.method public getNumMissedEvent(Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$NotiMode;)I
    .locals 5
    .parameter "mode"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 242
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 244
    .local v0, mNM:Landroid/app/NotificationManager;
    if-nez v0, :cond_0

    move v1, v3

    .line 261
    :goto_0
    return v1

    .line 247
    :cond_0
    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$NotiMode;

    if-ne p1, v1, :cond_2

    .line 248
    const-string v1, "com.android.phone"

    invoke-virtual {v0, v1, v4}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    .line 255
    :cond_1
    :goto_1
    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$NotiMode;

    if-ne p1, v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    if-eqz v1, :cond_4

    .line 256
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    iget v1, v1, Landroid/app/NotificationInfo;->missedCount:I

    goto :goto_0

    .line 249
    :cond_2
    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$NotiMode;

    if-ne p1, v1, :cond_3

    .line 250
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->MSG_PKG:Ljava/lang/String;

    const/16 v2, 0x7b

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    goto :goto_1

    .line 251
    :cond_3
    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$NotiMode;->MissedEMail:Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$NotiMode;

    if-ne p1, v1, :cond_1

    .line 252
    const-string v1, "com.android.email"

    invoke-virtual {v0, v1, v4}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    goto :goto_1

    .line 257
    :cond_4
    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$NotiMode;

    if-eq p1, v1, :cond_5

    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$NotiMode;->MissedEMail:Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$NotiMode;

    if-ne p1, v1, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    if-eqz v1, :cond_6

    .line 258
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    iget v1, v1, Landroid/app/NotificationInfo;->missedCount:I

    goto :goto_0

    :cond_6
    move v1, v3

    .line 261
    goto :goto_0
.end method

.method protected handleMissedEventUpdate()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->updateMissedEvent()V

    .line 111
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->invalidate()V

    .line 112
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 1
    .parameter "v"
    .parameter "grabbedState"

    .prologue
    .line 176
    if-nez p2, :cond_0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 179
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 149
    const-string v0, "GlassLockScreenMissedEventWidget"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 156
    const-string v0, "GlassLockScreenMissedEventWidget"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->updateMissedEvent()V

    .line 159
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 1
    .parameter "v"
    .parameter "whichHandle"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v0}, Lcom/android/internal/widget/SlidingTab;->cancelAnimation()V

    .line 166
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 167
    sget-object v0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$NotiMode;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->sendIntent(Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$NotiMode;)V

    .line 171
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 172
    return-void

    .line 168
    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 169
    sget-object v0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$NotiMode;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->sendIntent(Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$NotiMode;)V

    goto :goto_0
.end method
