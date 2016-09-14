.class final Lcom/nut/blehunter/ui/dd;
.super Ljava/lang/Object;
.source "MapLocationActivity.java"

# interfaces
.implements Lcom/nut/blehunter/c/a;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/c/g;

.field final synthetic b:Lcom/nut/blehunter/ui/dc;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/dc;Lcom/nut/blehunter/c/g;)V
    .locals 0

    .prologue
    .line 757
    iput-object p1, p0, Lcom/nut/blehunter/ui/dd;->b:Lcom/nut/blehunter/ui/dc;

    iput-object p2, p0, Lcom/nut/blehunter/ui/dd;->a:Lcom/nut/blehunter/c/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 765
    iget-object v0, p0, Lcom/nut/blehunter/ui/dd;->b:Lcom/nut/blehunter/ui/dc;

    iget-object v0, v0, Lcom/nut/blehunter/ui/dc;->e:Lcom/nut/blehunter/ui/MapLocationActivity;

    const v1, 0x7f0601b6

    invoke-static {v0, v1}, Lcom/nut/blehunter/d/o;->b(Landroid/content/Context;I)V

    .line 766
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 760
    iget-object v0, p0, Lcom/nut/blehunter/ui/dd;->b:Lcom/nut/blehunter/ui/dc;

    iget-object v0, v0, Lcom/nut/blehunter/ui/dc;->e:Lcom/nut/blehunter/ui/MapLocationActivity;

    iget-object v2, p0, Lcom/nut/blehunter/ui/dd;->a:Lcom/nut/blehunter/c/g;

    iget-object v1, p0, Lcom/nut/blehunter/ui/dd;->b:Lcom/nut/blehunter/ui/dc;

    iget-object v3, v1, Lcom/nut/blehunter/ui/dc;->b:Lcom/nut/blehunter/entity/Nut;

    iget-object v1, p0, Lcom/nut/blehunter/ui/dd;->b:Lcom/nut/blehunter/ui/dc;

    iget-object v4, v1, Lcom/nut/blehunter/ui/dc;->c:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/nut/blehunter/ui/dd;->b:Lcom/nut/blehunter/ui/dc;

    iget-boolean v5, v1, Lcom/nut/blehunter/ui/dc;->d:Z

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/nut/blehunter/ui/MapLocationActivity;->a(Lcom/nut/blehunter/ui/MapLocationActivity;Ljava/lang/String;Lcom/nut/blehunter/c/g;Lcom/nut/blehunter/entity/Nut;Landroid/graphics/Bitmap;Z)V

    .line 761
    return-void
.end method
