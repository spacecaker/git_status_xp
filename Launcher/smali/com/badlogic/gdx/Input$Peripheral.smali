.class public final enum Lcom/badlogic/gdx/Input$Peripheral;
.super Ljava/lang/Enum;


# static fields
.field public static final enum Accelerometer:Lcom/badlogic/gdx/Input$Peripheral;

.field public static final enum Compass:Lcom/badlogic/gdx/Input$Peripheral;

.field private static final synthetic ENUM$VALUES:[Lcom/badlogic/gdx/Input$Peripheral;

.field public static final enum HardwareKeyboard:Lcom/badlogic/gdx/Input$Peripheral;

.field public static final enum MultitouchScreen:Lcom/badlogic/gdx/Input$Peripheral;

.field public static final enum OnscreenKeyboard:Lcom/badlogic/gdx/Input$Peripheral;

.field public static final enum Vibrator:Lcom/badlogic/gdx/Input$Peripheral;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/badlogic/gdx/Input$Peripheral;

    const-string v1, "HardwareKeyboard"

    invoke-direct {v0, v1, v3}, Lcom/badlogic/gdx/Input$Peripheral;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/Input$Peripheral;->HardwareKeyboard:Lcom/badlogic/gdx/Input$Peripheral;

    new-instance v0, Lcom/badlogic/gdx/Input$Peripheral;

    const-string v1, "OnscreenKeyboard"

    invoke-direct {v0, v1, v4}, Lcom/badlogic/gdx/Input$Peripheral;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/Input$Peripheral;->OnscreenKeyboard:Lcom/badlogic/gdx/Input$Peripheral;

    new-instance v0, Lcom/badlogic/gdx/Input$Peripheral;

    const-string v1, "MultitouchScreen"

    invoke-direct {v0, v1, v5}, Lcom/badlogic/gdx/Input$Peripheral;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/Input$Peripheral;->MultitouchScreen:Lcom/badlogic/gdx/Input$Peripheral;

    new-instance v0, Lcom/badlogic/gdx/Input$Peripheral;

    const-string v1, "Accelerometer"

    invoke-direct {v0, v1, v6}, Lcom/badlogic/gdx/Input$Peripheral;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/Input$Peripheral;->Accelerometer:Lcom/badlogic/gdx/Input$Peripheral;

    new-instance v0, Lcom/badlogic/gdx/Input$Peripheral;

    const-string v1, "Compass"

    invoke-direct {v0, v1, v7}, Lcom/badlogic/gdx/Input$Peripheral;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/Input$Peripheral;->Compass:Lcom/badlogic/gdx/Input$Peripheral;

    new-instance v0, Lcom/badlogic/gdx/Input$Peripheral;

    const-string v1, "Vibrator"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/Input$Peripheral;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/Input$Peripheral;->Vibrator:Lcom/badlogic/gdx/Input$Peripheral;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/badlogic/gdx/Input$Peripheral;

    sget-object v1, Lcom/badlogic/gdx/Input$Peripheral;->HardwareKeyboard:Lcom/badlogic/gdx/Input$Peripheral;

    aput-object v1, v0, v3

    sget-object v1, Lcom/badlogic/gdx/Input$Peripheral;->OnscreenKeyboard:Lcom/badlogic/gdx/Input$Peripheral;

    aput-object v1, v0, v4

    sget-object v1, Lcom/badlogic/gdx/Input$Peripheral;->MultitouchScreen:Lcom/badlogic/gdx/Input$Peripheral;

    aput-object v1, v0, v5

    sget-object v1, Lcom/badlogic/gdx/Input$Peripheral;->Accelerometer:Lcom/badlogic/gdx/Input$Peripheral;

    aput-object v1, v0, v6

    sget-object v1, Lcom/badlogic/gdx/Input$Peripheral;->Compass:Lcom/badlogic/gdx/Input$Peripheral;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/badlogic/gdx/Input$Peripheral;->Vibrator:Lcom/badlogic/gdx/Input$Peripheral;

    aput-object v2, v0, v1

    sput-object v0, Lcom/badlogic/gdx/Input$Peripheral;->ENUM$VALUES:[Lcom/badlogic/gdx/Input$Peripheral;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/Input$Peripheral;
    .locals 1

    const-class v0, Lcom/badlogic/gdx/Input$Peripheral;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/Input$Peripheral;

    return-object v0
.end method

.method public static values()[Lcom/badlogic/gdx/Input$Peripheral;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/badlogic/gdx/Input$Peripheral;->ENUM$VALUES:[Lcom/badlogic/gdx/Input$Peripheral;

    array-length v1, v0

    new-array v2, v1, [Lcom/badlogic/gdx/Input$Peripheral;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
