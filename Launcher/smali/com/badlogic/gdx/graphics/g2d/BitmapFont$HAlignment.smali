.class public final enum Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;
.super Ljava/lang/Enum;


# static fields
.field public static final enum CENTER:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

.field private static final synthetic ENUM$VALUES:[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

.field public static final enum LEFT:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

.field public static final enum RIGHT:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;->LEFT:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    const-string v1, "CENTER"

    invoke-direct {v0, v1, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;->CENTER:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;->RIGHT:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;->LEFT:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    aput-object v1, v0, v2

    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;->CENTER:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    aput-object v1, v0, v3

    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;->RIGHT:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    aput-object v1, v0, v4

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;->ENUM$VALUES:[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;
    .locals 1

    const-class v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    return-object v0
.end method

.method public static values()[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;->ENUM$VALUES:[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    array-length v1, v0

    new-array v2, v1, [Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
