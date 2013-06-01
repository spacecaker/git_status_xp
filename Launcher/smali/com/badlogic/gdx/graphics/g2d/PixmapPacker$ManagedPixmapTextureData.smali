.class public Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$ManagedPixmapTextureData;
.super Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V
    .locals 1

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$ManagedPixmapTextureData;->this$0:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    return-void
.end method


# virtual methods
.method public isManaged()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
