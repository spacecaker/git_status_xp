.class public final enum Landroid/provider/CmSystem$RotaryStyle;
.super Ljava/lang/Enum;
.source "CmSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CmSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RotaryStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/provider/CmSystem$RotaryStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$android$provider$CmSystem$RotaryStyle:[I

.field private static final synthetic ENUM$VALUES:[Landroid/provider/CmSystem$RotaryStyle;

.field public static final enum Normal:Landroid/provider/CmSystem$RotaryStyle;

.field public static final enum Revamped:Landroid/provider/CmSystem$RotaryStyle;


# direct methods
.method static synthetic $SWITCH_TABLE$android$provider$CmSystem$RotaryStyle()[I
    .locals 3

    .prologue
    .line 173
    sget-object v0, Landroid/provider/CmSystem$RotaryStyle;->$SWITCH_TABLE$android$provider$CmSystem$RotaryStyle:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/provider/CmSystem$RotaryStyle;->values()[Landroid/provider/CmSystem$RotaryStyle;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/provider/CmSystem$RotaryStyle;->Normal:Landroid/provider/CmSystem$RotaryStyle;

    invoke-virtual {v1}, Landroid/provider/CmSystem$RotaryStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Landroid/provider/CmSystem$RotaryStyle;->Revamped:Landroid/provider/CmSystem$RotaryStyle;

    invoke-virtual {v1}, Landroid/provider/CmSystem$RotaryStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Landroid/provider/CmSystem$RotaryStyle;->$SWITCH_TABLE$android$provider$CmSystem$RotaryStyle:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 174
    new-instance v0, Landroid/provider/CmSystem$RotaryStyle;

    const-string v1, "Normal"

    invoke-direct {v0, v1, v2}, Landroid/provider/CmSystem$RotaryStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/CmSystem$RotaryStyle;->Normal:Landroid/provider/CmSystem$RotaryStyle;

    .line 175
    new-instance v0, Landroid/provider/CmSystem$RotaryStyle;

    const-string v1, "Revamped"

    invoke-direct {v0, v1, v3}, Landroid/provider/CmSystem$RotaryStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/CmSystem$RotaryStyle;->Revamped:Landroid/provider/CmSystem$RotaryStyle;

    .line 173
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/provider/CmSystem$RotaryStyle;

    sget-object v1, Landroid/provider/CmSystem$RotaryStyle;->Normal:Landroid/provider/CmSystem$RotaryStyle;

    aput-object v1, v0, v2

    sget-object v1, Landroid/provider/CmSystem$RotaryStyle;->Revamped:Landroid/provider/CmSystem$RotaryStyle;

    aput-object v1, v0, v3

    sput-object v0, Landroid/provider/CmSystem$RotaryStyle;->ENUM$VALUES:[Landroid/provider/CmSystem$RotaryStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 173
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getIdByStyle(Landroid/provider/CmSystem$RotaryStyle;)I
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 193
    invoke-static {}, Landroid/provider/CmSystem$RotaryStyle;->$SWITCH_TABLE$android$provider$CmSystem$RotaryStyle()[I

    move-result-object v0

    invoke-virtual {p0}, Landroid/provider/CmSystem$RotaryStyle;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    move v0, v2

    .line 199
    :goto_0
    return v0

    :pswitch_0
    move v0, v2

    .line 195
    goto :goto_0

    .line 197
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 193
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getStyleById(I)Landroid/provider/CmSystem$RotaryStyle;
    .locals 1
    .parameter

    .prologue
    .line 178
    packed-switch p0, :pswitch_data_0

    .line 184
    sget-object v0, Landroid/provider/CmSystem$RotaryStyle;->Normal:Landroid/provider/CmSystem$RotaryStyle;

    :goto_0
    return-object v0

    .line 180
    :pswitch_0
    sget-object v0, Landroid/provider/CmSystem$RotaryStyle;->Normal:Landroid/provider/CmSystem$RotaryStyle;

    goto :goto_0

    .line 182
    :pswitch_1
    sget-object v0, Landroid/provider/CmSystem$RotaryStyle;->Revamped:Landroid/provider/CmSystem$RotaryStyle;

    goto :goto_0

    .line 178
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getStyleById(Ljava/lang/String;)Landroid/provider/CmSystem$RotaryStyle;
    .locals 1
    .parameter

    .prologue
    .line 189
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/provider/CmSystem$RotaryStyle;->getStyleById(I)Landroid/provider/CmSystem$RotaryStyle;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/provider/CmSystem$RotaryStyle;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Landroid/provider/CmSystem$RotaryStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/provider/CmSystem$RotaryStyle;

    return-object p0
.end method

.method public static values()[Landroid/provider/CmSystem$RotaryStyle;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Landroid/provider/CmSystem$RotaryStyle;->ENUM$VALUES:[Landroid/provider/CmSystem$RotaryStyle;

    array-length v1, v0

    new-array v2, v1, [Landroid/provider/CmSystem$RotaryStyle;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
