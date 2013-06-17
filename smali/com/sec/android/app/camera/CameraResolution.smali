.class public Lcom/sec/android/app/camera/CameraResolution;
.super Ljava/lang/Object;
.source "CameraResolution.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compare(II)I
    .locals 4
    .parameter "res1"
    .parameter "res2"

    .prologue
    .line 202
    invoke-static {p0}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v2

    invoke-static {p1}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v3

    sub-int v1, v2, v3

    .line 203
    .local v1, dw:I
    invoke-static {p0}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v2

    invoke-static {p1}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v3

    sub-int v0, v2, v3

    .line 205
    .local v0, dh:I
    if-eqz v1, :cond_0

    if-nez v0, :cond_2

    .line 206
    :cond_0
    if-eqz v1, :cond_1

    move v2, v1

    .line 212
    :goto_0
    return v2

    :cond_1
    move v2, v0

    .line 209
    goto :goto_0

    .line 212
    :cond_2
    if-le v1, v0, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_0
.end method

.method public static getIntHeight(I)I
    .locals 1
    .parameter "resid"

    .prologue
    const/16 v0, 0x1e0

    .line 74
    packed-switch p0, :pswitch_data_0

    .line 101
    const/4 v0, 0x0

    :goto_0
    :pswitch_0
    return v0

    .line 76
    :pswitch_1
    const/16 v0, 0x780

    goto :goto_0

    .line 79
    :pswitch_2
    const/16 v0, 0x600

    goto :goto_0

    .line 81
    :pswitch_3
    const/16 v0, 0x4d0

    goto :goto_0

    .line 83
    :pswitch_4
    const/16 v0, 0x4b0

    goto :goto_0

    .line 86
    :pswitch_5
    const/16 v0, 0x3c0

    goto :goto_0

    .line 91
    :pswitch_6
    const/16 v0, 0x2d0

    goto :goto_0

    .line 96
    :pswitch_7
    const/16 v0, 0xf0

    goto :goto_0

    .line 98
    :pswitch_8
    const/16 v0, 0x90

    goto :goto_0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static getIntWidth(I)I
    .locals 1
    .parameter "resid"

    .prologue
    .line 43
    packed-switch p0, :pswitch_data_0

    .line 70
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 46
    :pswitch_0
    const/16 v0, 0xa00

    goto :goto_0

    .line 49
    :pswitch_1
    const/16 v0, 0x800

    goto :goto_0

    .line 52
    :pswitch_2
    const/16 v0, 0x640

    goto :goto_0

    .line 54
    :pswitch_3
    const/16 v0, 0x280

    goto :goto_0

    .line 56
    :pswitch_4
    const/16 v0, 0x320

    goto :goto_0

    .line 59
    :pswitch_5
    const/16 v0, 0x500

    goto :goto_0

    .line 61
    :pswitch_6
    const/16 v0, 0x2d0

    goto :goto_0

    .line 63
    :pswitch_7
    const/16 v0, 0x190

    goto :goto_0

    .line 65
    :pswitch_8
    const/16 v0, 0x140

    goto :goto_0

    .line 67
    :pswitch_9
    const/16 v0, 0xb0

    goto :goto_0

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static getResolutionID(Ljava/lang/String;)I
    .locals 1
    .parameter "value"

    .prologue
    .line 162
    const-string v0, "2560x1920"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    const/4 v0, 0x0

    .line 191
    :goto_0
    return v0

    .line 164
    :cond_0
    const-string v0, "2560x1536"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    const/4 v0, 0x1

    goto :goto_0

    .line 166
    :cond_1
    const-string v0, "2048x1536"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 167
    const/4 v0, 0x2

    goto :goto_0

    .line 168
    :cond_2
    const-string v0, "2048x1232"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 169
    const/4 v0, 0x3

    goto :goto_0

    .line 170
    :cond_3
    const-string v0, "1600x1200"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 171
    const/4 v0, 0x4

    goto :goto_0

    .line 172
    :cond_4
    const-string v0, "1600x960"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 173
    const/4 v0, 0x5

    goto :goto_0

    .line 174
    :cond_5
    const-string v0, "1280x960"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 175
    const/4 v0, 0x6

    goto :goto_0

    .line 176
    :cond_6
    const-string v0, "800x480"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 177
    const/16 v0, 0x8

    goto :goto_0

    .line 178
    :cond_7
    const-string v0, "640x480"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 179
    const/4 v0, 0x7

    goto :goto_0

    .line 180
    :cond_8
    const-string v0, "1280x720"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 181
    const/16 v0, 0x9

    goto :goto_0

    .line 182
    :cond_9
    const-string v0, "720x480"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 183
    const/16 v0, 0xa

    goto :goto_0

    .line 184
    :cond_a
    const-string v0, "400x240"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 185
    const/16 v0, 0xb

    goto :goto_0

    .line 186
    :cond_b
    const-string v0, "320x240"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 187
    const/16 v0, 0xc

    goto :goto_0

    .line 188
    :cond_c
    const-string v0, "176x144"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 189
    const/16 v0, 0xd

    goto/16 :goto_0

    .line 191
    :cond_d
    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method public static getResolutionString(I)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    const-string v1, "176x144"

    .line 127
    packed-switch p0, :pswitch_data_0

    .line 157
    const-string v0, "176x144"

    move-object v0, v1

    :goto_0
    return-object v0

    .line 129
    :pswitch_0
    const-string v0, "2560x1920"

    goto :goto_0

    .line 131
    :pswitch_1
    const-string v0, "2560x1536"

    goto :goto_0

    .line 133
    :pswitch_2
    const-string v0, "2048x1536"

    goto :goto_0

    .line 135
    :pswitch_3
    const-string v0, "2048x1232"

    goto :goto_0

    .line 137
    :pswitch_4
    const-string v0, "1600x1200"

    goto :goto_0

    .line 139
    :pswitch_5
    const-string v0, "1600x960"

    goto :goto_0

    .line 141
    :pswitch_6
    const-string v0, "1280x960"

    goto :goto_0

    .line 143
    :pswitch_7
    const-string v0, "800x480"

    goto :goto_0

    .line 145
    :pswitch_8
    const-string v0, "640x480"

    goto :goto_0

    .line 147
    :pswitch_9
    const-string v0, "1280x720"

    goto :goto_0

    .line 149
    :pswitch_a
    const-string v0, "720x480"

    goto :goto_0

    .line 151
    :pswitch_b
    const-string v0, "400x240"

    goto :goto_0

    .line 153
    :pswitch_c
    const-string v0, "320x240"

    goto :goto_0

    .line 155
    :pswitch_d
    const-string v0, "176x144"

    move-object v0, v1

    goto :goto_0

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public static isWideResolution(I)Z
    .locals 1
    .parameter "resid"

    .prologue
    .line 105
    packed-switch p0, :pswitch_data_0

    .line 122
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 112
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
