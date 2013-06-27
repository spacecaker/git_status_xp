.class public Lcom/sec/android/app/music/R2vsUtil;
.super Ljava/lang/Object;
.source "R2vsUtil.java"


# static fields
.field public static mValue:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method public static doConvertToMode(I)I
    .locals 1
    .parameter "value"

    .prologue
    .line 132
    const/4 v0, 0x0

    .line 134
    .local v0, mode:I
    sparse-switch p0, :sswitch_data_0

    .line 178
    const/4 v0, 0x1

    .line 181
    :goto_0
    return v0

    .line 136
    :sswitch_0
    const/4 v0, 0x1

    .line 137
    goto :goto_0

    .line 139
    :sswitch_1
    const/4 v0, 0x2

    .line 140
    goto :goto_0

    .line 142
    :sswitch_2
    const/4 v0, 0x4

    .line 143
    goto :goto_0

    .line 145
    :sswitch_3
    const/16 v0, 0x10

    .line 146
    goto :goto_0

    .line 148
    :sswitch_4
    const/16 v0, 0x80

    .line 149
    goto :goto_0

    .line 151
    :sswitch_5
    const/16 v0, 0x100

    .line 152
    goto :goto_0

    .line 154
    :sswitch_6
    const/high16 v0, 0x20

    .line 155
    goto :goto_0

    .line 157
    :sswitch_7
    const/16 v0, 0x8

    .line 158
    goto :goto_0

    .line 160
    :sswitch_8
    const/16 v0, 0x20

    .line 161
    goto :goto_0

    .line 163
    :sswitch_9
    const/16 v0, 0x2000

    .line 164
    goto :goto_0

    .line 166
    :sswitch_a
    const/high16 v0, 0x8

    .line 167
    goto :goto_0

    .line 169
    :sswitch_b
    const/high16 v0, 0x1

    .line 170
    goto :goto_0

    .line 172
    :sswitch_c
    const v0, 0x8000

    .line 173
    goto :goto_0

    .line 175
    :sswitch_d
    const/high16 v0, 0x2

    .line 176
    goto :goto_0

    .line 134
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0x64 -> :sswitch_6
    .end sparse-switch
.end method

.method public static doConvertToString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "value"

    .prologue
    const v1, 0x7f090057

    .line 86
    sput p1, Lcom/sec/android/app/music/R2vsUtil;->mValue:I

    .line 88
    packed-switch p1, :pswitch_data_0

    .line 126
    :pswitch_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, eqName:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 90
    .end local v0           #eqName:Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 91
    .restart local v0       #eqName:Ljava/lang/String;
    goto :goto_0

    .line 93
    .end local v0           #eqName:Ljava/lang/String;
    :pswitch_2
    const v1, 0x7f090075

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 94
    .restart local v0       #eqName:Ljava/lang/String;
    goto :goto_0

    .line 96
    .end local v0           #eqName:Ljava/lang/String;
    :pswitch_3
    const v1, 0x7f090046

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 97
    .restart local v0       #eqName:Ljava/lang/String;
    goto :goto_0

    .line 99
    .end local v0           #eqName:Ljava/lang/String;
    :pswitch_4
    const v1, 0x7f090024

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 100
    .restart local v0       #eqName:Ljava/lang/String;
    goto :goto_0

    .line 102
    .end local v0           #eqName:Ljava/lang/String;
    :pswitch_5
    const v1, 0x7f09002a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 103
    .restart local v0       #eqName:Ljava/lang/String;
    goto :goto_0

    .line 105
    .end local v0           #eqName:Ljava/lang/String;
    :pswitch_6
    const v1, 0x7f090069

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 106
    .restart local v0       #eqName:Ljava/lang/String;
    goto :goto_0

    .line 108
    .end local v0           #eqName:Ljava/lang/String;
    :pswitch_7
    const v1, 0x7f090047

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 109
    .restart local v0       #eqName:Ljava/lang/String;
    goto :goto_0

    .line 111
    .end local v0           #eqName:Ljava/lang/String;
    :pswitch_8
    const v1, 0x7f090026

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 112
    .restart local v0       #eqName:Ljava/lang/String;
    goto :goto_0

    .line 114
    .end local v0           #eqName:Ljava/lang/String;
    :pswitch_9
    const v1, 0x7f090096

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 115
    .restart local v0       #eqName:Ljava/lang/String;
    goto :goto_0

    .line 117
    .end local v0           #eqName:Ljava/lang/String;
    :pswitch_a
    const v1, 0x7f09004c

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 118
    .restart local v0       #eqName:Ljava/lang/String;
    goto :goto_0

    .line 120
    .end local v0           #eqName:Ljava/lang/String;
    :pswitch_b
    const v1, 0x7f090021

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 121
    .restart local v0       #eqName:Ljava/lang/String;
    goto :goto_0

    .line 123
    .end local v0           #eqName:Ljava/lang/String;
    :pswitch_c
    const v1, 0x7f09003e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 124
    .restart local v0       #eqName:Ljava/lang/String;
    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
