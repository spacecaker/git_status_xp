.class public Lcom/iLoong/launcher/c/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field a:Z

.field private b:Landroid/hardware/SensorManager;

.field private c:F

.field private d:F

.field private e:F

.field private f:J

.field private g:Lcom/iLoong/launcher/c/a;

.field private h:Landroid/content/Context;

.field private i:I

.field private j:J

.field private k:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/high16 v0, -0x4080

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/iLoong/launcher/c/f;->c:F

    iput v0, p0, Lcom/iLoong/launcher/c/f;->d:F

    iput v0, p0, Lcom/iLoong/launcher/c/f;->e:F

    iput v1, p0, Lcom/iLoong/launcher/c/f;->i:I

    iput-boolean v1, p0, Lcom/iLoong/launcher/c/f;->a:Z

    iput-object p1, p0, Lcom/iLoong/launcher/c/f;->h:Landroid/content/Context;

    return-void
.end method

.method private d()I
    .locals 2

    sget v0, Lcom/iLoong/launcher/Desktop3D/cb;->as:I

    if-lez v0, :cond_0

    sget v0, Lcom/iLoong/launcher/Desktop3D/cb;->as:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    sget v0, Lcom/iLoong/launcher/Desktop3D/cb;->as:I

    mul-int/lit8 v0, v0, 0x64

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1f4

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/iLoong/launcher/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/c/f;->g:Lcom/iLoong/launcher/c/a;

    return-void
.end method

.method public a()Z
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/iLoong/launcher/c/f;->h:Landroid/content/Context;

    const-string v3, "sensor"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    new-instance v3, Lcom/iLoong/launcher/c/f;

    iget-object v4, p0, Lcom/iLoong/launcher/c/f;->h:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/iLoong/launcher/c/f;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v4

    const-string v5, "test"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "sensor:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_0

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public b()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/iLoong/launcher/c/f;->h:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/iLoong/launcher/c/f;->b:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/iLoong/launcher/c/f;->b:Landroid/hardware/SensorManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/c/f;->b:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/iLoong/launcher/c/f;->b:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/c/f;->b:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/c/f;->b:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/c/f;->b:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iLoong/launcher/c/f;->b:Landroid/hardware/SensorManager;

    :cond_0
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-eq v0, v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/iLoong/launcher/c/f;->k:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    iput v6, p0, Lcom/iLoong/launcher/c/f;->i:I

    :cond_2
    iget-wide v2, p0, Lcom/iLoong/launcher/c/f;->f:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/iLoong/launcher/c/f;->f:J

    sub-long v2, v0, v2

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v6

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v7

    add-float/2addr v4, v5

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v8

    add-float/2addr v4, v5

    iget v5, p0, Lcom/iLoong/launcher/c/f;->c:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/iLoong/launcher/c/f;->d:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/iLoong/launcher/c/f;->e:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    long-to-float v2, v2

    div-float v2, v4, v2

    const v3, 0x461c4000

    mul-float/2addr v2, v3

    invoke-direct {p0}, Lcom/iLoong/launcher/c/f;->d()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    iget v2, p0, Lcom/iLoong/launcher/c/f;->i:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/iLoong/launcher/c/f;->i:I

    const/4 v3, 0x6

    if-lt v2, v3, :cond_3

    iget-wide v2, p0, Lcom/iLoong/launcher/c/f;->j:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    iput-wide v0, p0, Lcom/iLoong/launcher/c/f;->j:J

    iput v6, p0, Lcom/iLoong/launcher/c/f;->i:I

    iget-object v2, p0, Lcom/iLoong/launcher/c/f;->g:Lcom/iLoong/launcher/c/a;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/iLoong/launcher/c/f;->g:Lcom/iLoong/launcher/c/a;

    invoke-interface {v2}, Lcom/iLoong/launcher/c/a;->a()V

    :cond_3
    iput-wide v0, p0, Lcom/iLoong/launcher/c/f;->k:J

    :cond_4
    iput-wide v0, p0, Lcom/iLoong/launcher/c/f;->f:J

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v6

    iput v0, p0, Lcom/iLoong/launcher/c/f;->c:F

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v7

    iput v0, p0, Lcom/iLoong/launcher/c/f;->d:F

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v8

    iput v0, p0, Lcom/iLoong/launcher/c/f;->e:F

    goto :goto_0
.end method
