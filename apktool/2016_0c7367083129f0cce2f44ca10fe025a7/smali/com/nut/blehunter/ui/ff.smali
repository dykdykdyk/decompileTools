.class final Lcom/nut/blehunter/ui/ff;
.super Ljava/lang/Object;
.source "SafeRegionManageActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/entity/SafeRegion;

.field final synthetic b:Lcom/nut/blehunter/ui/fe;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/fe;Lcom/nut/blehunter/entity/SafeRegion;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/nut/blehunter/ui/ff;->b:Lcom/nut/blehunter/ui/fe;

    iput-object p2, p0, Lcom/nut/blehunter/ui/ff;->a:Lcom/nut/blehunter/entity/SafeRegion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/nut/blehunter/ui/ff;->b:Lcom/nut/blehunter/ui/fe;

    iget-object v0, v0, Lcom/nut/blehunter/ui/fe;->c:Lcom/nut/blehunter/ui/SafeRegionManageActivity;

    iget-object v1, p0, Lcom/nut/blehunter/ui/ff;->a:Lcom/nut/blehunter/entity/SafeRegion;

    iget-object v1, v1, Lcom/nut/blehunter/entity/SafeRegion;->e:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lcom/nut/blehunter/ui/SafeRegionManageActivity;->a(Lcom/nut/blehunter/ui/SafeRegionManageActivity;Ljava/lang/String;Z)V

    .line 111
    return-void
.end method
