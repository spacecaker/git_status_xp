.class public final enum Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;
.super Ljava/lang/Enum;


# static fields
.field public static final enum Compressed:Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

.field private static final synthetic ENUM$VALUES:[Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

.field public static final enum Pixmap:Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    const-string v1, "Pixmap"

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;->Pixmap:Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    new-instance v0, Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    const-string v1, "Compressed"

    invoke-direct {v0, v1, v3}, Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;->Compressed:Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    sget-object v1, Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;->Pixmap:Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;->Compressed:Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;->ENUM$VALUES:[Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;
    .locals 1

    const-class v0, Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    return-object v0
.end method

.method public static values()[Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;->ENUM$VALUES:[Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    array-length v1, v0

    new-array v2, v1, [Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
