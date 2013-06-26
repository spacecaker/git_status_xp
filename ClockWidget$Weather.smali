.class Lcom/android/internal/policy/impl/ClockWidget$Weather;
.super Landroid/widget/RelativeLayout;
.source "ClockWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/ClockWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Weather"
.end annotation


# instance fields
.field private final ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

.field private final ACTION_WEATHER_SETTING_CHANGED:Ljava/lang/String;

.field private final KEY_APP_SERVICE_STATUS:Ljava/lang/String;

.field private final KEY_CITY_ID:Ljava/lang/String;

.field private final KEY_CITY_NAME:Ljava/lang/String;

.field private final KEY_CURRENT_TEMP:Ljava/lang/String;

.field private final KEY_ICON_NUM:Ljava/lang/String;

.field private final KEY_TEMP_SCALE:Ljava/lang/String;

.field private final LOCK_SCREEN_SERVICE_CODE:I

.field private final MSG_WEATHER_DATA_UPDATED:I

.field private final MSG_WEATHER_SETTING_CHANGED:I

.field private final TEMP_SCALE_CENTIGRADE:I

.field private final TEMP_SCALE_FAHRENHEIT:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsWeatherDateAvailable:Z

.field private mNoServiceText:Landroid/widget/TextView;

.field private mTemperatureUnit:Landroid/graphics/drawable/Drawable;

.field private mWeatherCity:Landroid/widget/TextView;

.field private mWeatherDataBox:Landroid/widget/RelativeLayout;

.field private mWeatherIcon:Landroid/widget/ImageView;

.field private mWeatherTemperature:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 231
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 197
    const-string v0, "com.sec.android.widgetapp.accuweatherdaemon.action.CHANGE_SETTING"

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->ACTION_WEATHER_SETTING_CHANGED:Ljava/lang/String;

    .line 198
    const-string v0, "com.sec.android.widgetapp.accuweatherdaemon.action.WEATHER_DATE_SYNC"

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    .line 201
    const-string v0, "aw_daemon_service_key_app_service_status"

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->KEY_APP_SERVICE_STATUS:Ljava/lang/String;

    .line 202
    const-string v0, "aw_daemon_service_key_loc_code"

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->KEY_CITY_ID:Ljava/lang/String;

    .line 203
    const-string v0, "aw_daemon_service_key_current_temp"

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->KEY_CURRENT_TEMP:Ljava/lang/String;

    .line 204
    const-string v0, "aw_daemon_service_key_temp_scale"

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->KEY_TEMP_SCALE:Ljava/lang/String;

    .line 205
    const-string v0, "aw_daemon_service_key_icon_num"

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->KEY_ICON_NUM:Ljava/lang/String;

    .line 206
    const-string v0, "aw_daemon_service_key_city_name"

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->KEY_CITY_NAME:Ljava/lang/String;

    .line 209
    iput v2, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->LOCK_SCREEN_SERVICE_CODE:I

    .line 212
    const/16 v0, 0x12c0

    iput v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->MSG_WEATHER_SETTING_CHANGED:I

    .line 213
    const/16 v0, 0x12c1

    iput v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->MSG_WEATHER_DATA_UPDATED:I

    .line 216
    iput v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->TEMP_SCALE_FAHRENHEIT:I

    .line 217
    iput v2, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->TEMP_SCALE_CENTIGRADE:I

    .line 220
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mIsWeatherDateAvailable:Z

    .line 233
    iput-object p1, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mContext:Landroid/content/Context;

    .line 235
    new-instance v0, Lcom/android/internal/policy/impl/ClockWidget$Weather$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/ClockWidget$Weather$1;-><init>(Lcom/android/internal/policy/impl/ClockWidget$Weather;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mHandler:Landroid/os/Handler;

    .line 247
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/ClockWidget$Weather;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private findDrawableId(I)I
    .locals 1
    .parameter "weatherIconNum"

    .prologue
    const/4 v0, 0x0

    .line 398
    packed-switch p1, :pswitch_data_0

    .line 460
    :goto_0
    :pswitch_0
    return v0

    .line 405
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 409
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 411
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 416
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 418
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 422
    :pswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 425
    :pswitch_7
    const/4 v0, 0x7

    goto :goto_0

    .line 427
    :pswitch_8
    const/16 v0, 0x8

    goto :goto_0

    .line 430
    :pswitch_9
    const/16 v0, 0x9

    goto :goto_0

    .line 433
    :pswitch_a
    const/16 v0, 0xa

    goto :goto_0

    .line 437
    :pswitch_b
    const/16 v0, 0xb

    goto :goto_0

    .line 441
    :pswitch_c
    const/16 v0, 0xc

    goto :goto_0

    .line 443
    :pswitch_d
    const/16 v0, 0xd

    goto :goto_0

    .line 445
    :pswitch_e
    const/16 v0, 0xe

    goto :goto_0

    .line 447
    :pswitch_f
    const/16 v0, 0xf

    goto :goto_0

    .line 449
    :pswitch_10
    const/16 v0, 0x10

    goto :goto_0

    .line 451
    :pswitch_11
    const/16 v0, 0x11

    goto :goto_0

    .line 456
    :pswitch_12
    const/16 v0, 0x12

    goto :goto_0

    .line 458
    :pswitch_13
    const/16 v0, 0x13

    goto :goto_0

    .line 398
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_13
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_9
        :pswitch_b
    .end packed-switch
.end method

.method private setWeatherIcon(I)V
    .locals 4
    .parameter "iconNum"

    .prologue
    .line 381
    const/16 v2, 0x15

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    .line 393
    .local v1, unlock_weather_drawables:[I
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->findDrawableId(I)I

    move-result v0

    .line 394
    .local v0, i:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mWeatherIcon:Landroid/widget/ImageView;

    aget v3, v1, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 395
    return-void

    .line 381
    nop

    :array_0
    .array-data 0x4
        0xc9t 0x3t 0x8t 0x1t
        0xcat 0x3t 0x8t 0x1t
        0xcbt 0x3t 0x8t 0x1t
        0xcct 0x3t 0x8t 0x1t
        0xcdt 0x3t 0x8t 0x1t
        0xcet 0x3t 0x8t 0x1t
        0xcft 0x3t 0x8t 0x1t
        0xd0t 0x3t 0x8t 0x1t
        0xd1t 0x3t 0x8t 0x1t
        0xd2t 0x3t 0x8t 0x1t
        0xd3t 0x3t 0x8t 0x1t
        0xd4t 0x3t 0x8t 0x1t
        0xd4t 0x3t 0x8t 0x1t
        0xd5t 0x3t 0x8t 0x1t
        0xd6t 0x3t 0x8t 0x1t
        0xebt 0x3t 0x8t 0x1t
        0xect 0x3t 0x8t 0x1t
        0xedt 0x3t 0x8t 0x1t
        0xeet 0x3t 0x8t 0x1t
        0xeft 0x3t 0x8t 0x1t
        0xf0t 0x3t 0x8t 0x1t
    .end array-data
.end method


# virtual methods
.method public getTTSMessage()Ljava/lang/String;
    .locals 12

    .prologue
    const v10, 0x1040473

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v11, " "

    .line 466
    const-string v0, ""

    .line 468
    .local v0, TTSMessage:Ljava/lang/String;
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mIsWeatherDateAvailable:Z

    if-nez v6, :cond_0

    move-object v1, v0

    .line 484
    .end local v0           #TTSMessage:Ljava/lang/String;
    .local v1, TTSMessage:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 471
    .end local v1           #TTSMessage:Ljava/lang/String;
    .restart local v0       #TTSMessage:Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "aw_daemon_service_key_temp_scale"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v9, :cond_1

    move v5, v9

    .line 472
    .local v5, isCelsius:Z
    :goto_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "aw_daemon_service_key_current_temp"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v4

    .line 473
    .local v4, currentTemp:F
    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "aw_daemon_service_key_weather_text"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 476
    .local v3, TtsWeather:Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 477
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mContext:Landroid/content/Context;

    const v8, 0x1040471

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 481
    .local v2, TtsDegreeText:Ljava/lang/String;
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 484
    .end local v0           #TTSMessage:Ljava/lang/String;
    .restart local v1       #TTSMessage:Ljava/lang/String;
    goto :goto_0

    .end local v1           #TTSMessage:Ljava/lang/String;
    .end local v2           #TtsDegreeText:Ljava/lang/String;
    .end local v3           #TtsWeather:Ljava/lang/String;
    .end local v4           #currentTemp:F
    .end local v5           #isCelsius:Z
    .restart local v0       #TTSMessage:Ljava/lang/String;
    :cond_1
    move v5, v8

    .line 471
    goto :goto_1

    .line 479
    .restart local v3       #TtsWeather:Ljava/lang/String;
    .restart local v4       #currentTemp:F
    .restart local v5       #isCelsius:Z
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mContext:Landroid/content/Context;

    const v8, 0x1040472

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #TtsDegreeText:Ljava/lang/String;
    goto :goto_2
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 251
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 254
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 256
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 257
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.widgetapp.accuweatherdaemon.action.CHANGE_SETTING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 258
    const-string v1, "com.sec.android.widgetapp.accuweatherdaemon.action.WEATHER_DATE_SYNC"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 261
    new-instance v1, Lcom/android/internal/policy/impl/ClockWidget$Weather$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/ClockWidget$Weather$2;-><init>(Lcom/android/internal/policy/impl/ClockWidget$Weather;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 274
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 278
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->updateWeatherInfo()V

    .line 279
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 283
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 287
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 289
    iput-object v2, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 290
    iput-object v2, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mHandler:Landroid/os/Handler;

    .line 293
    :cond_0
    iput-object v2, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mNoServiceText:Landroid/widget/TextView;

    .line 294
    iput-object v2, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mWeatherDataBox:Landroid/widget/RelativeLayout;

    .line 295
    iput-object v2, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mWeatherCity:Landroid/widget/TextView;

    .line 296
    iput-object v2, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mWeatherTemperature:Landroid/widget/TextView;

    .line 297
    iput-object v2, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mWeatherIcon:Landroid/widget/ImageView;

    .line 298
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 302
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 303
    const v0, 0x102026f

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mNoServiceText:Landroid/widget/TextView;

    .line 304
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mNoServiceText:Landroid/widget/TextView;

    const v1, 0x1040467

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 305
    const v0, 0x1020270

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mWeatherDataBox:Landroid/widget/RelativeLayout;

    .line 306
    const v0, 0x1020272

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mWeatherCity:Landroid/widget/TextView;

    .line 307
    const v0, 0x1020273

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mWeatherTemperature:Landroid/widget/TextView;

    .line 308
    const v0, 0x1020274

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mWeatherIcon:Landroid/widget/ImageView;

    .line 309
    return-void
.end method

.method public updateWeatherInfo()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/16 v10, 0x8

    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string v13, "ClockWidget"

    .line 315
    iget-object v8, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mHandler:Landroid/os/Handler;

    if-nez v8, :cond_0

    .line 373
    :goto_0
    return-void

    .line 319
    :cond_0
    iget-object v8, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "aw_daemon_service_key_app_service_status"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 320
    .local v5, mAppServiceStatus:I
    and-int/lit8 v8, v5, 0x1

    if-ne v8, v12, :cond_2

    move v4, v12

    .line 322
    .local v4, isServiceEnable:Z
    :goto_1
    iget-object v8, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "aw_daemon_service_key_loc_code"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, cityId:Ljava/lang/String;
    const-string v8, "ClockWidget"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isServiceEnable = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " cityId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    if-eqz v4, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 327
    const-string v8, "ClockWidget"

    const-string v8, "Weather Demon is running, And data is ready"

    invoke-static {v13, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-virtual {p0, v11}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->setVisibility(I)V

    .line 329
    iget-object v8, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mNoServiceText:Landroid/widget/TextView;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 330
    iget-object v8, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mWeatherDataBox:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 331
    iput-boolean v12, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mIsWeatherDateAvailable:Z

    .line 347
    iget-object v8, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "aw_daemon_service_key_current_temp"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v2

    .line 348
    .local v2, currentTemp:F
    iget-object v8, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "aw_daemon_service_key_temp_scale"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 349
    .local v6, tempScale:I
    iget-object v8, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "aw_daemon_service_key_icon_num"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 350
    .local v3, iconNum:I
    iget-object v8, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "aw_daemon_service_key_city_name"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 352
    .local v1, cityName:Ljava/lang/String;
    const-string v8, "ClockWidget"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Weather Data : currentTemp = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " tempScale = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " iconNum = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " cityName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v8, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mWeatherCity:Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    iget-object v8, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mWeatherCity:Landroid/widget/TextView;

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setSelected(Z)V

    .line 360
    if-ne v6, v12, :cond_6

    .line 361
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10803b1

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mTemperatureUnit:Landroid/graphics/drawable/Drawable;

    .line 367
    :cond_1
    :goto_2
    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v7

    .line 368
    .local v7, text_currentTemp:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mWeatherTemperature:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    iget-object v8, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mWeatherTemperature:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mTemperatureUnit:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v14, v14, v9, v14}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 372
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->setWeatherIcon(I)V

    goto/16 :goto_0

    .end local v0           #cityId:Ljava/lang/String;
    .end local v1           #cityName:Ljava/lang/String;
    .end local v2           #currentTemp:F
    .end local v3           #iconNum:I
    .end local v4           #isServiceEnable:Z
    .end local v6           #tempScale:I
    .end local v7           #text_currentTemp:Ljava/lang/String;
    :cond_2
    move v4, v11

    .line 320
    goto/16 :goto_1

    .line 332
    .restart local v0       #cityId:Ljava/lang/String;
    .restart local v4       #isServiceEnable:Z
    :cond_3
    if-eqz v4, :cond_5

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 333
    :cond_4
    const-string v8, "ClockWidget"

    const-string v8, "Weather Demon is running, But data is not ready"

    invoke-static {v13, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-virtual {p0, v11}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->setVisibility(I)V

    .line 335
    iget-object v8, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mNoServiceText:Landroid/widget/TextView;

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 336
    iget-object v8, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mWeatherDataBox:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 337
    iput-boolean v11, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mIsWeatherDateAvailable:Z

    goto/16 :goto_0

    .line 340
    :cond_5
    const-string v8, "ClockWidget"

    const-string v8, "Weather Demon is not running, Set visibility to GONE"

    invoke-static {v13, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-virtual {p0, v10}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->setVisibility(I)V

    .line 342
    iput-boolean v11, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mIsWeatherDateAvailable:Z

    goto/16 :goto_0

    .line 362
    .restart local v1       #cityName:Ljava/lang/String;
    .restart local v2       #currentTemp:F
    .restart local v3       #iconNum:I
    .restart local v6       #tempScale:I
    :cond_6
    if-nez v6, :cond_1

    .line 363
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10803b2

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mTemperatureUnit:Landroid/graphics/drawable/Drawable;

    goto :goto_2
.end method
