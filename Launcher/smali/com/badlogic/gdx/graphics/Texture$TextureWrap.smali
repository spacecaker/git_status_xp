.class public final enum Lcom/badlogic/gdx/graphics/Texture$TextureWrap;
.super Ljava/lang/Enum;


# static fields
.field public static final enum ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

.field private static final synthetic ENUM$VALUES:[Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

.field public static final enum Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;


# instance fields
.field final glEnum:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    const-string v1, "ClampToEdge"

    const v2, 0x812f

    invoke-direct {v0, v1, v3, v2}, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    new-instance v0, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    const-string v1, "Repeat"

    const/16 v2, 0x2901

    invoke-direct {v0, v1, v4, v2}, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    aput-object v1, v0, v3

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    aput-object v1, v0, v4

    sput-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ENUM$VALUES:[Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->glEnum:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture$TextureWrap;
    .locals 1

    const-class v0, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    return-object v0
.end method

.method public static values()[Lcom/badlogic/gdx/graphics/Texture$TextureWrap;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ENUM$VALUES:[Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    array-length v1, v0

    new-array v2, v1, [Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getGLEnum()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->glEnum:I

    return v0
.end method
