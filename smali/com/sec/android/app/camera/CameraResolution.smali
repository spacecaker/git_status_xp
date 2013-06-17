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
    .line 203
    invoke-static {p0}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v2

    invoke-static {p1}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v3

    sub-int v1, v2, v3

    .line 204
    .local v1, dw:I
    invoke-static {p0}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v2

    invoke-static {p1}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v3

    sub-int v0, v2, v3

    .line 206
    .local v0, dh:I
    if-eqz v1, :cond_0

    if-nez v0, :cond_2

    .line 207
    :cond_0
    if-eqz v1, :cond_1

    move v2, v1

    .line 213
    :goto_0
    return v2

    :cond_1
    move v2, v0

    .line 210
    goto :goto_0

    .line 213
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

    .line 75
    packed-switch p0, :pswitch_data_0

    .line 102
    const/4 v0, 0x0

    :goto_0
    :pswitch_0
    return v0

    .line 77
    :pswitch_1
    const/16 v0, 0x780

    goto :goto_0

    .line 80
    :pswitch_2
    const/16 v0, 0x600

    goto :goto_0

    .line 82
    :pswitch_3
    const/16 v0, 0x4d0

    goto :goto_0

    .line 84
    :pswitch_4
    const/16 v0, 0x4b0

    goto :goto_0

    .line 87
    :pswitch_5
    const/16 v0, 0x3c0

    goto :goto_0

    .line 92
    :pswitch_6
    const/16 v0, 0x2d0

    goto :goto_0

    .line 97
    :pswitch_7
    const/16 v0, 0xf0

    goto :goto_0

    .line 99
    :pswitch_8
    const/16 v0, 0x90

    goto :goto_0

    .line 75
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
        :pswitch_6
        :pswitch_0
        :pswitch_0
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
    .line 44
    packed-switch p0, :pswitch_data_0

    .line 71
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 47
    :pswitch_0
    const/16 v0, 0xa00

    goto :goto_0

    .line 50
    :pswitch_1
    const/16 v0, 0x800

    goto :goto_0

    .line 53
    :pswitch_2
    const/16 v0, 0x640

    goto :goto_0

    .line 55
    :pswitch_3
    const/16 v0, 0x280

    goto :goto_0

    .line 57
    :pswitch_4
    const/16 v0, 0x320

    goto :goto_0

    .line 60
    :pswitch_5
    const/16 v0, 0x500

    goto :goto_0

    .line 62
    :pswitch_6
    const/16 v0, 0x2d0

    goto :goto_0

    .line 64
    :pswitch_7
    const/16 v0, 0x190

    goto :goto_0

    .line 66
    :pswitch_8
    const/16 v0, 0x140

    goto :goto_0

    .line 68
    :pswitch_9
    const/16 v0, 0xb0

    goto :goto_0

    .line 44
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
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static getResolutionID(Ljava/lang/String;)I
    .locals 1
    .parameter "value"

    .prologue
    .line 163
    const-string v0, "2560x1920"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    const/4 v0, 0x0

    .line 192
    :goto_0
    return v0

    .line 165
    :cond_0
    const-string v0, "2560x1536"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    const/4 v0, 0x1

    goto :goto_0

    .line 167
    :cond_1
    const-string v0, "2048x1536"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 168
    const/4 v0, 0x2

    goto :goto_0

    .line 169
    :cond_2
    const-string v0, "2048x1232"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 170
    const/4 v0, 0x3

    goto :goto_0

    .line 171
    :cond_3
    const-string v0, "1600x1200"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 172
    const/4 v0, 0x4

    goto :goto_0

    .line 173
    :cond_4
    const-string v0, "1600x960"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 174
    const/4 v0, 0x5

    goto :goto_0

    .line 175
    :cond_5
    const-string v0, "1280x960"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 176
    const/4 v0, 0x6

    goto :goto_0

    .line 177
    :cond_6
    const-string v0, "800x480"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 178
    const/16 v0, 0x8

    goto :goto_0

    .line 179
    :cond_7
    const-string v0, "640x480"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 180
    const/16 v0, 0xa

    goto :goto_0

    .line 181
    :cond_8
    const-string v0, "1280x720"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 182
    const/4 v0, 0x7

    goto :goto_0

    .line 183
    :cond_9
    const-string v0, "720x480"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 184
    const/16 v0, 0x9

    goto :goto_0

    .line 185
    :cond_a
    const-string v0, "400x240"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 186
    const/16 v0, 0xb

    goto :goto_0

    .line 187
    :cond_b
    const-string v0, "320x240"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 188
    const/16 v0, 0xc

    goto :goto_0

    .line 189
    :cond_c
    const-string v0, "176x144"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 190
    const/16 v0, 0xd

    goto/16 :goto_0

    .line 192
    :cond_d
    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method public static getResolutionString(I)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    const-string v1, "176x144"

    .line 128
    packed-switch p0, :pswitch_data_0

    .line 158
    const-string v0, "176x144"

    move-object v0, v1

    :goto_0
    return-object v0

    .line 130
    :pswitch_0
    const-string v0, "2560x1920"

    goto :goto_0

    .line 132
    :pswitch_1
    const-string v0, "2560x1536"

    goto :goto_0

    .line 134
    :pswitch_2
    const-string v0, "2048x1536"

    goto :goto_0

    .line 136
    :pswitch_3
    const-string v0, "2048x1232"

    goto :goto_0

    .line 138
    :pswitch_4
    const-string v0, "1600x1200"

    goto :goto_0

    .line 140
    :pswitch_5
    const-string v0, "1600x960"

    goto :goto_0

    .line 142
    :pswitch_6
    const-string v0, "1280x960"

    goto :goto_0

    .line 144
    :pswitch_7
    const-string v0, "800x480"

    goto :goto_0

    .line 146
    :pswitch_8
    const-string v0, "640x480"

    goto :goto_0

    .line 148
    :pswitch_9
    const-string v0, "1280x720"

    goto :goto_0

    .line 150
    :pswitch_a
    const-string v0, "720x480"

    goto :goto_0

    .line 152
    :pswitch_b
    const-string v0, "400x240"

    goto :goto_0

    .line 154
    :pswitch_c
    const-string v0, "320x240"

    goto :goto_0

    .line 156
    :pswitch_d
    const-string v0, "176x144"

    move-object v0, v1

    goto :goto_0

    .line 128
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_9
        :pswitch_7
        :pswitch_a
        :pswitch_8
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public static isWideResolution(I)Z
    .locals 1
    .parameter "resid"

    .prologue
    .line 106
    packed-switch p0, :pswitch_data_0

    .line 123
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 113
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
