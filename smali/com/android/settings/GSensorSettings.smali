.class public Lcom/android/settings/GSensorSettings;
.super Landroid/app/Activity;
.source "GSensorSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/GSensorSettings$1;,
        Lcom/android/settings/GSensorSettings$setHandler;,
        Lcom/android/settings/GSensorSettings$GSensorSettingsView;,
        Lcom/android/settings/GSensorSettings$handlersensor;
    }
.end annotation


# static fields
.field private static CENTER_X:I

.field private static CENTER_Y:I

.field private static CIRCLE_RADIUS:I

.field private static ICON_RADIUS:I

.field static ani_count:I

.field static ani_gap_x:F

.field static ani_gap_y:F

.field private static circlePaint:Landroid/graphics/Paint;

.field private static sampleCount:I

.field static sampleData_x:F

.field static sampleData_y:F


# instance fields
.field private btn_cal:Landroid/widget/Button;

.field private drawView:Lcom/android/settings/GSensorSettings$GSensorSettingsView;

.field private draw_layout:Landroid/widget/LinearLayout;

.field private mAccelerometerSensor:Landroid/hardware/Sensor;

.field mHandler:Lcom/android/settings/GSensorSettings$setHandler;

.field mSensorListner:Lcom/android/settings/GSensorSettings$handlersensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private text:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const/16 v0, 0x78

    sput v0, Lcom/android/settings/GSensorSettings;->CENTER_X:I

    .line 70
    const/16 v0, 0x9e

    sput v0, Lcom/android/settings/GSensorSettings;->CENTER_Y:I

    .line 71
    const/16 v0, 0x12

    sput v0, Lcom/android/settings/GSensorSettings;->ICON_RADIUS:I

    .line 72
    const/16 v0, 0x50

    sput v0, Lcom/android/settings/GSensorSettings;->CIRCLE_RADIUS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 301
    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/GSensorSettings;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/GSensorSettings;->text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/GSensorSettings;)Landroid/hardware/Sensor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/GSensorSettings;->mAccelerometerSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/GSensorSettings;)Landroid/hardware/SensorManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/GSensorSettings;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/GSensorSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/settings/GSensorSettings;->diplayCompleted()V

    return-void
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/android/settings/GSensorSettings;->sampleCount:I

    return v0
.end method

.method static synthetic access$302(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    sput p0, Lcom/android/settings/GSensorSettings;->sampleCount:I

    return p0
.end method

.method static synthetic access$304()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/android/settings/GSensorSettings;->sampleCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/settings/GSensorSettings;->sampleCount:I

    return v0
.end method

.method static synthetic access$308()I
    .locals 2

    .prologue
    .line 48
    sget v0, Lcom/android/settings/GSensorSettings;->sampleCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/settings/GSensorSettings;->sampleCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/GSensorSettings;)Lcom/android/settings/GSensorSettings$GSensorSettingsView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/GSensorSettings;->drawView:Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/android/settings/GSensorSettings;->CENTER_X:I

    return v0
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/android/settings/GSensorSettings;->ICON_RADIUS:I

    return v0
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/android/settings/GSensorSettings;->CENTER_Y:I

    return v0
.end method

.method static synthetic access$800()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/android/settings/GSensorSettings;->CIRCLE_RADIUS:I

    return v0
.end method

.method static synthetic access$900()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/settings/GSensorSettings;->circlePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private diplayCompleted()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 236
    iget-object v1, p0, Lcom/android/settings/GSensorSettings;->btn_cal:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 237
    const v1, 0x7f08048f

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 238
    .local v0, mtoast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 240
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 126
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/android/settings/GSensorSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/settings/GSensorSettings;->mSensorManager:Landroid/hardware/SensorManager;

    .line 127
    iget-object v0, p0, Lcom/android/settings/GSensorSettings;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/GSensorSettings;->mAccelerometerSensor:Landroid/hardware/Sensor;

    .line 129
    const v0, 0x7f0b0044

    invoke-virtual {p0, v0}, Lcom/android/settings/GSensorSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/GSensorSettings;->btn_cal:Landroid/widget/Button;

    .line 130
    iget-object v0, p0, Lcom/android/settings/GSensorSettings;->btn_cal:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v0, p0, Lcom/android/settings/GSensorSettings;->btn_cal:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 133
    const v0, 0x7f0b0042

    invoke-virtual {p0, v0}, Lcom/android/settings/GSensorSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/GSensorSettings;->text:Landroid/widget/TextView;

    .line 135
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/android/settings/GSensorSettings;->circlePaint:Landroid/graphics/Paint;

    .line 136
    sget-object v0, Lcom/android/settings/GSensorSettings;->circlePaint:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 137
    sget-object v0, Lcom/android/settings/GSensorSettings;->circlePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 138
    sget-object v0, Lcom/android/settings/GSensorSettings;->circlePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 139
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 152
    :goto_0
    return-void

    .line 144
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/GSensorSettings;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/settings/GSensorSettings;->mSensorListner:Lcom/android/settings/GSensorSettings$handlersensor;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 145
    iget-object v1, p0, Lcom/android/settings/GSensorSettings;->btn_cal:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 146
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 147
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 148
    iget-object v1, p0, Lcom/android/settings/GSensorSettings;->mHandler:Lcom/android/settings/GSensorSettings$setHandler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/settings/GSensorSettings$setHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch 0x7f0b0044
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x78

    const/16 v5, 0x12

    const/16 v3, 0xa0

    const-string v4, "GSensorSettings"

    .line 84
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    new-instance v1, Lcom/android/settings/GSensorSettings$setHandler;

    invoke-direct {v1, p0, v7}, Lcom/android/settings/GSensorSettings$setHandler;-><init>(Lcom/android/settings/GSensorSettings;Lcom/android/settings/GSensorSettings$1;)V

    iput-object v1, p0, Lcom/android/settings/GSensorSettings;->mHandler:Lcom/android/settings/GSensorSettings$setHandler;

    .line 88
    const v1, 0x7f03001f

    invoke-virtual {p0, v1}, Lcom/android/settings/GSensorSettings;->setContentView(I)V

    .line 90
    const-string v1, "ro.sf.lcd_density"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 91
    .local v0, iDensity:I
    if-ne v0, v6, :cond_2

    .line 92
    const-string v1, "GSensorSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device name is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and DENSITY_LOW"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "B7510"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 94
    const-string v1, "GSensorSettings"

    const-string v1, "values are set for bennett"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    sput v3, Lcom/android/settings/GSensorSettings;->CENTER_X:I

    .line 96
    const/16 v1, 0x64

    sput v1, Lcom/android/settings/GSensorSettings;->CENTER_Y:I

    .line 97
    sput v5, Lcom/android/settings/GSensorSettings;->ICON_RADIUS:I

    .line 98
    const/16 v1, 0x32

    sput v1, Lcom/android/settings/GSensorSettings;->CIRCLE_RADIUS:I

    .line 116
    :cond_0
    :goto_0
    new-instance v1, Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    invoke-direct {v1, p0}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/GSensorSettings;->drawView:Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    .line 117
    const v1, 0x7f0b0043

    invoke-virtual {p0, v1}, Lcom/android/settings/GSensorSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/GSensorSettings;->draw_layout:Landroid/widget/LinearLayout;

    .line 118
    iget-object v1, p0, Lcom/android/settings/GSensorSettings;->draw_layout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/settings/GSensorSettings;->drawView:Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 119
    invoke-direct {p0}, Lcom/android/settings/GSensorSettings;->init()V

    .line 121
    new-instance v1, Lcom/android/settings/GSensorSettings$handlersensor;

    invoke-direct {v1, p0, v7}, Lcom/android/settings/GSensorSettings$handlersensor;-><init>(Lcom/android/settings/GSensorSettings;Lcom/android/settings/GSensorSettings$1;)V

    iput-object v1, p0, Lcom/android/settings/GSensorSettings;->mSensorListner:Lcom/android/settings/GSensorSettings$handlersensor;

    .line 122
    return-void

    .line 101
    :cond_1
    const-string v1, "GSensorSettings"

    const-string v1, "values are set for beni, tass"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    sput v6, Lcom/android/settings/GSensorSettings;->CENTER_X:I

    .line 103
    const/16 v1, 0x9e

    sput v1, Lcom/android/settings/GSensorSettings;->CENTER_Y:I

    .line 104
    sput v5, Lcom/android/settings/GSensorSettings;->ICON_RADIUS:I

    .line 105
    const/16 v1, 0x50

    sput v1, Lcom/android/settings/GSensorSettings;->CIRCLE_RADIUS:I

    goto :goto_0

    .line 108
    :cond_2
    if-ne v0, v3, :cond_0

    .line 109
    const-string v1, "GSensorSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device name is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and DENSITY_LOW"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    sput v3, Lcom/android/settings/GSensorSettings;->CENTER_X:I

    .line 111
    const/16 v1, 0xf0

    sput v1, Lcom/android/settings/GSensorSettings;->CENTER_Y:I

    .line 112
    const/16 v1, 0x19

    sput v1, Lcom/android/settings/GSensorSettings;->ICON_RADIUS:I

    .line 113
    const/16 v1, 0x80

    sput v1, Lcom/android/settings/GSensorSettings;->CIRCLE_RADIUS:I

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/settings/GSensorSettings;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/settings/GSensorSettings;->mSensorListner:Lcom/android/settings/GSensorSettings$handlersensor;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 176
    iget-object v0, p0, Lcom/android/settings/GSensorSettings;->mHandler:Lcom/android/settings/GSensorSettings$setHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/GSensorSettings$setHandler;->removeMessages(I)V

    .line 177
    iget-object v0, p0, Lcom/android/settings/GSensorSettings;->mHandler:Lcom/android/settings/GSensorSettings$setHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings/GSensorSettings$setHandler;->removeMessages(I)V

    .line 178
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 179
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 155
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 156
    sput v3, Lcom/android/settings/GSensorSettings;->sampleCount:I

    .line 158
    iget-object v0, p0, Lcom/android/settings/GSensorSettings;->text:Landroid/widget/TextView;

    const v1, 0x7f080490

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 160
    iget-object v0, p0, Lcom/android/settings/GSensorSettings;->drawView:Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/settings/GSensorSettings;->drawView:Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    const/4 v1, 0x1

    #calls: Lcom/android/settings/GSensorSettings$GSensorSettingsView;->updateState(I)V
    invoke-static {v0, v1}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->access$200(Lcom/android/settings/GSensorSettings$GSensorSettingsView;I)V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/android/settings/GSensorSettings;->btn_cal:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/android/settings/GSensorSettings;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/settings/GSensorSettings;->mSensorListner:Lcom/android/settings/GSensorSettings$handlersensor;

    iget-object v2, p0, Lcom/android/settings/GSensorSettings;->mAccelerometerSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 169
    return-void
.end method
