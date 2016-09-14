.class final Lcom/nut/blehunter/ui/bh;
.super Ljava/lang/Object;
.source "LocationRecordActivity.java"

# interfaces
.implements Lcom/nut/blehunter/ui/widget/z;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/LocationRecordActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/LocationRecordActivity;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/nut/blehunter/ui/bh;->a:Lcom/nut/blehunter/ui/LocationRecordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/threeten/bp/j;)V
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/nut/blehunter/ui/bh;->a:Lcom/nut/blehunter/ui/LocationRecordActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/LocationRecordActivity;->a(Lcom/nut/blehunter/ui/LocationRecordActivity;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ui/bh;->a:Lcom/nut/blehunter/ui/LocationRecordActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/LocationRecordActivity;->a(Lcom/nut/blehunter/ui/LocationRecordActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v1, p0, Lcom/nut/blehunter/ui/bh;->a:Lcom/nut/blehunter/ui/LocationRecordActivity;

    iget-object v0, p0, Lcom/nut/blehunter/ui/bh;->a:Lcom/nut/blehunter/ui/LocationRecordActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/LocationRecordActivity;->a(Lcom/nut/blehunter/ui/LocationRecordActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Lorg/threeten/bp/j;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/nut/blehunter/ui/LocationRecordActivity;->a(Lcom/nut/blehunter/ui/LocationRecordActivity;Lorg/threeten/bp/j;Ljava/util/List;)V

    .line 106
    :cond_0
    return-void
.end method
