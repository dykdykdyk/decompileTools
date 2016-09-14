.class final Lcom/nut/blehunter/ui/cx;
.super Ljava/lang/Object;
.source "MapLocationActivity.java"

# interfaces
.implements Lcom/squareup/picasso/Target;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/MapLocationActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/MapLocationActivity;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/nut/blehunter/ui/cx;->a:Lcom/nut/blehunter/ui/MapLocationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBitmapFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public final onBitmapLoaded(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/nut/blehunter/ui/cx;->a:Lcom/nut/blehunter/ui/MapLocationActivity;

    invoke-static {v0, p1}, Lcom/nut/blehunter/ui/MapLocationActivity;->a(Lcom/nut/blehunter/ui/MapLocationActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 114
    return-void
.end method

.method public final onPrepareLoad(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 122
    return-void
.end method
