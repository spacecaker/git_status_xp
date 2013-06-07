.class Lcom/android/settings/GSensorSettings$setHandler;
.super Landroid/os/Handler;
.source "GSensorSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/GSensorSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "setHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/GSensorSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/GSensorSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Lcom/android/settings/GSensorSettings$setHandler;->this$0:Lcom/android/settings/GSensorSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/GSensorSettings;Lcom/android/settings/GSensorSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 301
    invoke-direct {p0, p1}, Lcom/android/settings/GSensorSettings$setHandler;-><init>(Lcom/android/settings/GSensorSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    .line 303
    const/4 v10, 0x2

    new-array v8, v10, [F

    .line 304
    .local v8, position:[F
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 306
    .local v7, message:Landroid/os/Message;
    iget v10, p1, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_0

    .line 377
    :goto_0
    return-void

    .line 308
    :pswitch_0
    iget-object v10, p0, Lcom/android/settings/GSensorSettings$setHandler;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->text:Landroid/widget/TextView;
    invoke-static {v10}, Lcom/android/settings/GSensorSettings;->access$1000(Lcom/android/settings/GSensorSettings;)Landroid/widget/TextView;

    move-result-object v10

    const v11, 0x7f080491

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 309
    iget-object v10, p0, Lcom/android/settings/GSensorSettings$setHandler;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->drawView:Lcom/android/settings/GSensorSettings$GSensorSettingsView;
    invoke-static {v10}, Lcom/android/settings/GSensorSettings;->access$400(Lcom/android/settings/GSensorSettings;)Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->getPoint([F)[F

    .line 310
    iget-object v10, p0, Lcom/android/settings/GSensorSettings$setHandler;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->drawView:Lcom/android/settings/GSensorSettings$GSensorSettingsView;
    invoke-static {v10}, Lcom/android/settings/GSensorSettings;->access$400(Lcom/android/settings/GSensorSettings;)Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    move-result-object v10

    const/4 v11, 0x2

    #calls: Lcom/android/settings/GSensorSettings$GSensorSettingsView;->updateState(I)V
    invoke-static {v10, v11}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->access$200(Lcom/android/settings/GSensorSettings$GSensorSettingsView;I)V

    .line 311
    const/4 v10, 0x0

    aget v10, v8, v10

    invoke-static {}, Lcom/android/settings/GSensorSettings;->access$500()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    const/high16 v11, 0x4220

    div-float/2addr v10, v11

    sput v10, Lcom/android/settings/GSensorSettings;->ani_gap_x:F

    .line 312
    const/4 v10, 0x1

    aget v10, v8, v10

    invoke-static {}, Lcom/android/settings/GSensorSettings;->access$700()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    const/high16 v11, 0x4220

    div-float/2addr v10, v11

    sput v10, Lcom/android/settings/GSensorSettings;->ani_gap_y:F

    .line 313
    const/16 v10, 0x28

    sput v10, Lcom/android/settings/GSensorSettings;->ani_count:I

    .line 315
    const/4 v10, 0x2

    iput v10, v7, Landroid/os/Message;->what:I

    .line 316
    const-wide/16 v10, 0x32

    invoke-virtual {p0, v7, v10, v11}, Lcom/android/settings/GSensorSettings$setHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 317
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/android/settings/GSensorSettings$setHandler;->removeMessages(I)V

    goto :goto_0

    .line 321
    :pswitch_1
    sget v10, Lcom/android/settings/GSensorSettings;->ani_count:I

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    sput v10, Lcom/android/settings/GSensorSettings;->ani_count:I

    if-ltz v10, :cond_0

    .line 322
    iget-object v10, p0, Lcom/android/settings/GSensorSettings$setHandler;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->drawView:Lcom/android/settings/GSensorSettings$GSensorSettingsView;
    invoke-static {v10}, Lcom/android/settings/GSensorSettings;->access$400(Lcom/android/settings/GSensorSettings;)Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    move-result-object v10

    sget v11, Lcom/android/settings/GSensorSettings;->ani_gap_x:F

    sget v12, Lcom/android/settings/GSensorSettings;->ani_count:I

    int-to-float v12, v12

    mul-float/2addr v11, v12

    sget v12, Lcom/android/settings/GSensorSettings;->ani_gap_y:F

    neg-float v12, v12

    sget v13, Lcom/android/settings/GSensorSettings;->ani_count:I

    int-to-float v13, v13

    mul-float/2addr v12, v13

    invoke-virtual {v10, v11, v12}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->setPoint(FF)V

    .line 325
    iget-object v10, p0, Lcom/android/settings/GSensorSettings$setHandler;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->drawView:Lcom/android/settings/GSensorSettings$GSensorSettingsView;
    invoke-static {v10}, Lcom/android/settings/GSensorSettings;->access$400(Lcom/android/settings/GSensorSettings;)Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->invalidate()V

    .line 326
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/android/settings/GSensorSettings$setHandler;->removeMessages(I)V

    .line 327
    const/4 v10, 0x2

    iput v10, v7, Landroid/os/Message;->what:I

    .line 328
    const-wide/16 v10, 0x32

    invoke-virtual {p0, v7, v10, v11}, Lcom/android/settings/GSensorSettings$setHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 330
    :cond_0
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/android/settings/GSensorSettings$setHandler;->removeMessages(I)V

    .line 331
    const/4 v10, 0x3

    iput v10, v7, Landroid/os/Message;->what:I

    .line 332
    const-wide/16 v10, 0x32

    invoke-virtual {p0, v7, v10, v11}, Lcom/android/settings/GSensorSettings$setHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 333
    const/16 v10, 0x28

    sput v10, Lcom/android/settings/GSensorSettings;->ani_count:I

    goto/16 :goto_0

    .line 338
    :pswitch_2
    const/4 v10, 0x3

    invoke-virtual {p0, v10}, Lcom/android/settings/GSensorSettings$setHandler;->removeMessages(I)V

    .line 340
    const-string v4, "/sys/devices/virtual/accelerometer/accelerometer/calibrate"

    .line 341
    .local v4, filepath:Ljava/lang/String;
    const-string v9, "0"

    .line 342
    .local v9, result:Ljava/lang/String;
    const/4 v0, 0x0

    .line 343
    .local v0, buf:Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 345
    .local v5, fr:Ljava/io/FileReader;
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 346
    .end local v5           #fr:Ljava/io/FileReader;
    .local v6, fr:Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v10, 0x1fa0

    invoke-direct {v1, v6, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 347
    .end local v0           #buf:Ljava/io/BufferedReader;
    .local v1, buf:Ljava/io/BufferedReader;
    if-eqz v1, :cond_1

    .line 348
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    move-result-object v9

    .line 356
    :cond_1
    if-eqz v6, :cond_2

    .line 357
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 358
    :cond_2
    if-eqz v1, :cond_3

    .line 359
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_3
    move-object v5, v6

    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    move-object v0, v1

    .line 365
    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    :cond_4
    :goto_1
    iget-object v10, p0, Lcom/android/settings/GSensorSettings$setHandler;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v10}, Lcom/android/settings/GSensorSettings;->access$1200(Lcom/android/settings/GSensorSettings;)Landroid/hardware/SensorManager;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/GSensorSettings$setHandler;->this$0:Lcom/android/settings/GSensorSettings;

    iget-object v11, v11, Lcom/android/settings/GSensorSettings;->mSensorListner:Lcom/android/settings/GSensorSettings$handlersensor;

    iget-object v12, p0, Lcom/android/settings/GSensorSettings$setHandler;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->mAccelerometerSensor:Landroid/hardware/Sensor;
    invoke-static {v12}, Lcom/android/settings/GSensorSettings;->access$1100(Lcom/android/settings/GSensorSettings;)Landroid/hardware/Sensor;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 368
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/android/settings/GSensorSettings;->access$302(I)I

    .line 369
    iget-object v10, p0, Lcom/android/settings/GSensorSettings$setHandler;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->drawView:Lcom/android/settings/GSensorSettings$GSensorSettingsView;
    invoke-static {v10}, Lcom/android/settings/GSensorSettings;->access$400(Lcom/android/settings/GSensorSettings;)Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    move-result-object v10

    const/4 v11, 0x1

    #calls: Lcom/android/settings/GSensorSettings$GSensorSettingsView;->updateState(I)V
    invoke-static {v10, v11}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->access$200(Lcom/android/settings/GSensorSettings$GSensorSettingsView;I)V

    .line 370
    iget-object v10, p0, Lcom/android/settings/GSensorSettings$setHandler;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->text:Landroid/widget/TextView;
    invoke-static {v10}, Lcom/android/settings/GSensorSettings;->access$1000(Lcom/android/settings/GSensorSettings;)Landroid/widget/TextView;

    move-result-object v10

    const v11, 0x7f080490

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 372
    iget-object v10, p0, Lcom/android/settings/GSensorSettings$setHandler;->this$0:Lcom/android/settings/GSensorSettings;

    #calls: Lcom/android/settings/GSensorSettings;->diplayCompleted()V
    invoke-static {v10}, Lcom/android/settings/GSensorSettings;->access$1300(Lcom/android/settings/GSensorSettings;)V

    goto/16 :goto_0

    .line 360
    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    :catch_0
    move-exception v10

    move-object v2, v10

    .line 361
    .local v2, e:Ljava/io/IOException;
    const-string v10, "GSensorSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "IOException"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    move-object v0, v1

    .line 363
    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_1

    .line 350
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v10

    move-object v3, v10

    .line 351
    .local v3, ex:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    const-string v10, "GSensorSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "FileNotFoundException"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 356
    if-eqz v5, :cond_5

    .line 357
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 358
    :cond_5
    if-eqz v0, :cond_4

    .line 359
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 360
    :catch_2
    move-exception v10

    move-object v2, v10

    .line 361
    .restart local v2       #e:Ljava/io/IOException;
    const-string v10, "GSensorSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "IOException"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 352
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #ex:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v10

    move-object v2, v10

    .line 353
    .restart local v2       #e:Ljava/io/IOException;
    :goto_3
    :try_start_6
    const-string v10, "GSensorSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "IOException"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 356
    if-eqz v5, :cond_6

    .line 357
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 358
    :cond_6
    if-eqz v0, :cond_4

    .line 359
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_1

    .line 360
    :catch_4
    move-exception v10

    move-object v2, v10

    .line 361
    const-string v10, "GSensorSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "IOException"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 355
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 356
    :goto_4
    if-eqz v5, :cond_7

    .line 357
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 358
    :cond_7
    if-eqz v0, :cond_8

    .line 359
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 362
    :cond_8
    :goto_5
    throw v10

    .line 360
    :catch_5
    move-exception v11

    move-object v2, v11

    .line 361
    .restart local v2       #e:Ljava/io/IOException;
    const-string v11, "GSensorSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "IOException"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 355
    .end local v2           #e:Ljava/io/IOException;
    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    :catchall_1
    move-exception v10

    move-object v5, v6

    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    goto :goto_4

    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    :catchall_2
    move-exception v10

    move-object v5, v6

    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_4

    .line 352
    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    :catch_6
    move-exception v10

    move-object v2, v10

    move-object v5, v6

    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    goto :goto_3

    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    :catch_7
    move-exception v10

    move-object v2, v10

    move-object v5, v6

    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_3

    .line 350
    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    :catch_8
    move-exception v10

    move-object v3, v10

    move-object v5, v6

    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    goto/16 :goto_2

    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    :catch_9
    move-exception v10

    move-object v3, v10

    move-object v5, v6

    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto/16 :goto_2

    .line 306
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
