.class Lcom/android/music/MediaPlaybackService$4;
.super Landroid/content/BroadcastReceiver;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/MediaPlaybackService;


# direct methods
.method constructor <init>(Lcom/android/music/MediaPlaybackService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService$4;->this$0:Lcom/android/music/MediaPlaybackService;

    .line 356
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    const-string v7, "appWidgetIds"

    .line 359
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, action:Ljava/lang/String;
    const-string v4, "command"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 361
    .local v2, cmd:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mIntentReceiver.onReceive "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    .line 362
    const-string v4, "next"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "com.android.music.musicservicecommand.next"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 363
    :cond_0
    const-string v4, "trackball"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 366
    .local v3, trackballSource:Z
    if-eqz v3, :cond_1

    .line 367
    const-string v4, "doubletap_trackball_skip"

    .line 366
    invoke-static {p1, v4, v6}, Lcom/android/music/MusicUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 371
    :cond_1
    iget-object v4, p0, Lcom/android/music/MediaPlaybackService$4;->this$0:Lcom/android/music/MediaPlaybackService;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/music/MediaPlaybackService;->next(Z)V

    .line 425
    .end local v3           #trackballSource:Z
    :cond_2
    :goto_0
    return-void

    .line 372
    :cond_3
    const-string v4, "previous"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "com.android.music.musicservicecommand.previous"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 373
    :cond_4
    iget-object v4, p0, Lcom/android/music/MediaPlaybackService$4;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v4}, Lcom/android/music/MediaPlaybackService;->prev()V

    goto :goto_0

    .line 374
    :cond_5
    const-string v4, "togglepause"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "com.android.music.musicservicecommand.togglepause"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 375
    :cond_6
    iget-object v4, p0, Lcom/android/music/MediaPlaybackService$4;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v4}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 376
    iget-object v4, p0, Lcom/android/music/MediaPlaybackService$4;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v4}, Lcom/android/music/MediaPlaybackService;->pause()V

    .line 377
    iget-object v4, p0, Lcom/android/music/MediaPlaybackService$4;->this$0:Lcom/android/music/MediaPlaybackService;

    #setter for: Lcom/android/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v4, v6}, Lcom/android/music/MediaPlaybackService;->access$15(Lcom/android/music/MediaPlaybackService;Z)V

    goto :goto_0

    .line 379
    :cond_7
    iget-object v4, p0, Lcom/android/music/MediaPlaybackService$4;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v4}, Lcom/android/music/MediaPlaybackService;->play()V

    goto :goto_0

    .line 381
    :cond_8
    const-string v4, "com.android.music.musicservicecommand.checkplaystatus"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 382
    iget-object v4, p0, Lcom/android/music/MediaPlaybackService$4;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v4}, Lcom/android/music/MediaPlaybackService;->sendMediaPlayInfo()V

    goto :goto_0

    .line 383
    :cond_9
    const-string v4, "pause"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "com.android.music.musicservicecommand.pause"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 384
    :cond_a
    iget-object v4, p0, Lcom/android/music/MediaPlaybackService$4;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v4}, Lcom/android/music/MediaPlaybackService;->pause()V

    .line 385
    iget-object v4, p0, Lcom/android/music/MediaPlaybackService$4;->this$0:Lcom/android/music/MediaPlaybackService;

    #setter for: Lcom/android/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v4, v6}, Lcom/android/music/MediaPlaybackService;->access$15(Lcom/android/music/MediaPlaybackService;Z)V

    goto :goto_0

    .line 386
    :cond_b
    const-string v4, "stop"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 387
    iget-object v4, p0, Lcom/android/music/MediaPlaybackService$4;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v4}, Lcom/android/music/MediaPlaybackService;->pause()V

    .line 388
    iget-object v4, p0, Lcom/android/music/MediaPlaybackService$4;->this$0:Lcom/android/music/MediaPlaybackService;

    #setter for: Lcom/android/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v4, v6}, Lcom/android/music/MediaPlaybackService;->access$15(Lcom/android/music/MediaPlaybackService;Z)V

    .line 389
    iget-object v4, p0, Lcom/android/music/MediaPlaybackService$4;->this$0:Lcom/android/music/MediaPlaybackService;

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/music/MediaPlaybackService;->seek(J)J

    goto/16 :goto_0

    .line 390
    :cond_c
    const-string v4, "shuffle"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    const-string v4, "com.android.music.musicservicecommand.shuffle"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 391
    :cond_d
    iget-object v4, p0, Lcom/android/music/MediaPlaybackService$4;->this$0:Lcom/android/music/MediaPlaybackService;

    #calls: Lcom/android/music/MediaPlaybackService;->toggleShuffle()V
    invoke-static {v4}, Lcom/android/music/MediaPlaybackService;->access$16(Lcom/android/music/MediaPlaybackService;)V

    goto/16 :goto_0

    .line 392
    :cond_e
    const-string v4, "repeat"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    const-string v4, "com.android.music.musicservicecommand.repeat"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 393
    :cond_f
    iget-object v4, p0, Lcom/android/music/MediaPlaybackService$4;->this$0:Lcom/android/music/MediaPlaybackService;

    #calls: Lcom/android/music/MediaPlaybackService;->cycleRepeat()V
    invoke-static {v4}, Lcom/android/music/MediaPlaybackService;->access$17(Lcom/android/music/MediaPlaybackService;)V

    goto/16 :goto_0

    .line 394
    :cond_10
    const-string v4, "appwidgetupdate"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 397
    const-string v4, "appWidgetIds"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    .line 398
    .local v1, appWidgetIds:[I
    iget-object v4, p0, Lcom/android/music/MediaPlaybackService$4;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mAppWidgetProvider:Lcom/android/music/MediaAppWidgetProvider;
    invoke-static {v4}, Lcom/android/music/MediaPlaybackService;->access$18(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaAppWidgetProvider;

    move-result-object v4

    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$4;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v4, v5, v1}, Lcom/android/music/MediaAppWidgetProvider;->performUpdate(Lcom/android/music/MediaPlaybackService;[I)V

    .line 399
    const-string v4, "MediaAppWidgetProvider1"

    const-string v5, "MediaAppWidgetProvider1 is recieving"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 400
    .end local v1           #appWidgetIds:[I
    :cond_11
    const-string v4, "appwidgetupdate2"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 403
    const-string v4, "appWidgetIds"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    .line 404
    .restart local v1       #appWidgetIds:[I
    iget-object v4, p0, Lcom/android/music/MediaPlaybackService$4;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mAppWidgetProvider2:Lcom/android/music/MediaAppWidgetProvider2;
    invoke-static {v4}, Lcom/android/music/MediaPlaybackService;->access$19(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaAppWidgetProvider2;

    move-result-object v4

    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$4;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v4, v5, v1}, Lcom/android/music/MediaAppWidgetProvider2;->performUpdate(Lcom/android/music/MediaPlaybackService;[I)V

    .line 405
    const-string v4, "MediaAppWidgetProvider2"

    const-string v5, "MediaAppWidgetProvider2 is recieving"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 406
    .end local v1           #appWidgetIds:[I
    :cond_12
    const-string v4, "appwidgetupdate3"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 409
    const-string v4, "appWidgetIds"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    .line 410
    .restart local v1       #appWidgetIds:[I
    iget-object v4, p0, Lcom/android/music/MediaPlaybackService$4;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mAppWidgetProvider3:Lcom/android/music/MediaAppWidgetProvider3;
    invoke-static {v4}, Lcom/android/music/MediaPlaybackService;->access$20(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaAppWidgetProvider3;

    move-result-object v4

    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$4;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v4, v5, v1}, Lcom/android/music/MediaAppWidgetProvider3;->performUpdate(Lcom/android/music/MediaPlaybackService;[I)V

    .line 411
    const-string v4, "MediaAppWidgetProvider3"

    const-string v5, "MediaAppWidgetProvider3 is recieving"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 412
    .end local v1           #appWidgetIds:[I
    :cond_13
    const-string v4, "appwidgetupdate4"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 415
    const-string v4, "appWidgetIds"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    .line 416
    .restart local v1       #appWidgetIds:[I
    iget-object v4, p0, Lcom/android/music/MediaPlaybackService$4;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mAppWidgetProvider4:Lcom/android/music/MediaAppWidgetProvider4;
    invoke-static {v4}, Lcom/android/music/MediaPlaybackService;->access$21(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaAppWidgetProvider4;

    move-result-object v4

    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$4;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v4, v5, v1}, Lcom/android/music/MediaAppWidgetProvider4;->performUpdate(Lcom/android/music/MediaPlaybackService;[I)V

    .line 417
    const-string v4, "MediaAppWidgetProvider4"

    const-string v5, "MediaAppWidgetProvider4 is recieving"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 418
    .end local v1           #appWidgetIds:[I
    :cond_14
    const-string v4, "appwidgetupdate5"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 421
    const-string v4, "appWidgetIds"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    .line 422
    .restart local v1       #appWidgetIds:[I
    iget-object v4, p0, Lcom/android/music/MediaPlaybackService$4;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mAppWidgetProvider5:Lcom/android/music/MediaAppWidgetProvider5;
    invoke-static {v4}, Lcom/android/music/MediaPlaybackService;->access$22(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaAppWidgetProvider5;

    move-result-object v4

    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$4;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v4, v5, v1}, Lcom/android/music/MediaAppWidgetProvider5;->performUpdate(Lcom/android/music/MediaPlaybackService;[I)V

    .line 423
    const-string v4, "MediaAppWidgetProvider5"

    const-string v5, "MediaAppWidgetProvider5 is recieving"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
