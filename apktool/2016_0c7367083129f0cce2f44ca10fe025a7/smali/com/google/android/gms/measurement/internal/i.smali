.class public final Lcom/google/android/gms/measurement/internal/i;
.super Lcom/google/android/gms/measurement/internal/c;


# instance fields
.field final a:Lcom/google/android/gms/measurement/internal/o;

.field b:Lcom/google/android/gms/measurement/internal/ba;

.field private c:Ljava/lang/Boolean;

.field private final d:Lcom/google/android/gms/measurement/internal/ar;

.field private final e:Lcom/google/android/gms/measurement/internal/af;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/android/gms/measurement/internal/ar;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/measurement/internal/ca;)V
    .locals 2

    .prologue
    .line 0
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/c;-><init>(Lcom/google/android/gms/measurement/internal/ca;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/i;->f:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/measurement/internal/af;

    .line 1000
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/ca;->g:Lcom/google/android/gms/common/util/c;

    .line 0
    invoke-direct {v0, v1}, Lcom/google/android/gms/measurement/internal/af;-><init>(Lcom/google/android/gms/common/util/c;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/i;->e:Lcom/google/android/gms/measurement/internal/af;

    new-instance v0, Lcom/google/android/gms/measurement/internal/o;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/o;-><init>(Lcom/google/android/gms/measurement/internal/i;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/i;->a:Lcom/google/android/gms/measurement/internal/o;

    new-instance v0, Lcom/google/android/gms/measurement/internal/j;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/j;-><init>(Lcom/google/android/gms/measurement/internal/i;Lcom/google/android/gms/measurement/internal/ca;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/i;->d:Lcom/google/android/gms/measurement/internal/ar;

    new-instance v0, Lcom/google/android/gms/measurement/internal/k;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/k;-><init>(Lcom/google/android/gms/measurement/internal/i;Lcom/google/android/gms/measurement/internal/ca;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/i;->g:Lcom/google/android/gms/measurement/internal/ar;

    return-void
.end method

.method private A()V
    .locals 4

    .prologue
    .line 0
    .line 6000
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/c;->i()V

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/i;->e:Lcom/google/android/gms/measurement/internal/af;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/af;->a()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/i;->d:Lcom/google/android/gms/measurement/internal/ar;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/am;->K()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/ar;->a(J)V

    return-void
.end method

.method private a(Lcom/google/android/gms/measurement/internal/ba;)V
    .locals 3

    .prologue
    .line 0
    .line 51008
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/c;->i()V

    .line 0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/i;->b:Lcom/google/android/gms/measurement/internal/ba;

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/i;->A()V

    .line 51010
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/c;->i()V

    .line 51011
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/c;->v()Lcom/google/android/gms/measurement/internal/bf;

    move-result-object v0

    .line 51012
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/bf;->g:Lcom/google/android/gms/measurement/internal/bh;

    .line 51009
    const-string v1, "Processing queued up service tasks"

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/i;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/bh;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/i;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 51013
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/c;->u()Lcom/google/android/gms/measurement/internal/bv;

    move-result-object v2

    .line 51009
    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/bv;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/i;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/i;->g:Lcom/google/android/gms/measurement/internal/ar;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ar;->b()V

    .line 0
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/i;)V
    .locals 2

    .prologue
    .line 0
    .line 51026
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/c;->i()V

    .line 51025
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/i;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51027
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/c;->v()Lcom/google/android/gms/measurement/internal/bf;

    move-result-object v0

    .line 51028
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/bf;->g:Lcom/google/android/gms/measurement/internal/bh;

    .line 51025
    const-string v1, "Inactivity, disconnecting from AppMeasurementService"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/bh;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/i;->z()V

    .line 0
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/i;Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 0
    .line 51020
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/c;->i()V

    .line 51019
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/i;->b:Lcom/google/android/gms/measurement/internal/ba;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/i;->b:Lcom/google/android/gms/measurement/internal/ba;

    .line 51021
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/c;->v()Lcom/google/android/gms/measurement/internal/bf;

    move-result-object v0

    .line 51022
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/bf;->g:Lcom/google/android/gms/measurement/internal/bh;

    .line 51019
    const-string v1, "Disconnected from device MeasurementService"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/bh;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 51024
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/c;->i()V

    .line 51023
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/i;->y()V

    .line 0
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/i;Lcom/google/android/gms/measurement/internal/ba;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/i;->a(Lcom/google/android/gms/measurement/internal/ba;)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 0
    .line 51016
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/c;->i()V

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/i;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/i;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-static {}, Lcom/google/android/gms/measurement/internal/am;->T()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 51017
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/c;->v()Lcom/google/android/gms/measurement/internal/bf;

    move-result-object v0

    .line 51018
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/bf;->a:Lcom/google/android/gms/measurement/internal/bh;

    .line 0
    const-string v1, "Discarding data. Max runnable queue size reached"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/bh;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/i;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/i;->g:Lcom/google/android/gms/measurement/internal/ar;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/ar;->a(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/i;->y()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/gms/measurement/internal/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/i;->A()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/measurement/internal/EventParcel;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3000
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/c;->i()V

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/i;->b()V

    new-instance v0, Lcom/google/android/gms/measurement/internal/l;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/gms/measurement/internal/l;-><init>(Lcom/google/android/gms/measurement/internal/i;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/EventParcel;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/i;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final a(Lcom/google/android/gms/measurement/internal/UserAttributeParcel;)V
    .locals 1

    .prologue
    .line 0
    .line 4000
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/c;->i()V

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/i;->b()V

    new-instance v0, Lcom/google/android/gms/measurement/internal/m;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/m;-><init>(Lcom/google/android/gms/measurement/internal/i;Lcom/google/android/gms/measurement/internal/UserAttributeParcel;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/i;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final d()V
    .locals 0

    return-void
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 0
    .line 2000
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/c;->i()V

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/i;->b()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/i;->b:Lcom/google/android/gms/measurement/internal/ba;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final f()V
    .locals 1

    .prologue
    .line 0
    .line 5000
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/c;->i()V

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/i;->b()V

    new-instance v0, Lcom/google/android/gms/measurement/internal/n;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/n;-><init>(Lcom/google/android/gms/measurement/internal/i;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/i;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final bridge synthetic g()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/c;->g()V

    return-void
.end method

.method public final bridge synthetic h()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/c;->h()V

    return-void
.end method

.method public final bridge synthetic i()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/c;->i()V

    return-void
.end method

.method public final bridge synthetic j()Lcom/google/android/gms/measurement/internal/al;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/c;->j()Lcom/google/android/gms/measurement/internal/al;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic k()Lcom/google/android/gms/measurement/internal/e;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/c;->k()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic l()Lcom/google/android/gms/measurement/internal/bd;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/c;->l()Lcom/google/android/gms/measurement/internal/bd;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic m()Lcom/google/android/gms/measurement/internal/at;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/c;->m()Lcom/google/android/gms/measurement/internal/at;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic n()Lcom/google/android/gms/measurement/internal/i;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/c;->n()Lcom/google/android/gms/measurement/internal/i;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic o()Lcom/google/android/gms/common/util/c;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/c;->o()Lcom/google/android/gms/common/util/c;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic p()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/c;->p()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic q()Lcom/google/android/gms/measurement/internal/an;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/c;->q()Lcom/google/android/gms/measurement/internal/an;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic r()Lcom/google/android/gms/measurement/internal/aj;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/c;->r()Lcom/google/android/gms/measurement/internal/aj;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic s()Lcom/google/android/gms/measurement/internal/bu;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/c;->s()Lcom/google/android/gms/measurement/internal/bu;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic t()Lcom/google/android/gms/measurement/internal/x;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/c;->t()Lcom/google/android/gms/measurement/internal/x;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic u()Lcom/google/android/gms/measurement/internal/bv;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/c;->u()Lcom/google/android/gms/measurement/internal/bv;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic v()Lcom/google/android/gms/measurement/internal/bf;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/c;->v()Lcom/google/android/gms/measurement/internal/bf;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic w()Lcom/google/android/gms/measurement/internal/bp;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/c;->w()Lcom/google/android/gms/measurement/internal/bp;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic x()Lcom/google/android/gms/measurement/internal/am;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/c;->x()Lcom/google/android/gms/measurement/internal/am;

    move-result-object v0

    return-object v0
.end method

.method final y()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 0
    .line 7000
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/c;->i()V

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/i;->b()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/i;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48000
    :goto_0
    return-void

    .line 0
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/i;->c:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 8000
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/c;->w()Lcom/google/android/gms/measurement/internal/bp;

    move-result-object v0

    .line 0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bp;->A()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/i;->c:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/i;->c:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 9000
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/c;->v()Lcom/google/android/gms/measurement/internal/bf;

    move-result-object v0

    .line 10000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/bf;->g:Lcom/google/android/gms/measurement/internal/bh;

    .line 0
    const-string v3, "State of service unknown"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/bh;->a(Ljava/lang/String;)V

    .line 12000
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/c;->i()V

    .line 11000
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/i;->b()V

    invoke-static {}, Lcom/google/android/gms/measurement/internal/am;->N()Z

    .line 13000
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/c;->v()Lcom/google/android/gms/measurement/internal/bf;

    move-result-object v0

    .line 14000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/bf;->g:Lcom/google/android/gms/measurement/internal/bh;

    .line 11000
    const-string v3, "Checking service availability"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/bh;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/common/g;->b()Lcom/google/android/gms/common/g;

    move-result-object v0

    .line 15000
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/c;->p()Landroid/content/Context;

    move-result-object v3

    .line 11000
    invoke-virtual {v0, v3}, Lcom/google/android/gms/common/g;->a(Landroid/content/Context;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_1
    move v0, v2

    .line 0
    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/i;->c:Ljava/lang/Boolean;

    .line 28000
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/c;->w()Lcom/google/android/gms/measurement/internal/bp;

    move-result-object v0

    .line 0
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/i;->c:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 29000
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bp;->i()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bp;->v()Lcom/google/android/gms/measurement/internal/bf;

    move-result-object v4

    .line 30000
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/bf;->g:Lcom/google/android/gms/measurement/internal/bh;

    .line 29000
    const-string v5, "Setting useService"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/bh;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bp;->y()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "use_service"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 0
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/i;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 31000
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/c;->v()Lcom/google/android/gms/measurement/internal/bf;

    move-result-object v0

    .line 32000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/bf;->g:Lcom/google/android/gms/measurement/internal/bh;

    .line 0
    const-string v1, "Using measurement service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/bh;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/i;->a:Lcom/google/android/gms/measurement/internal/o;

    .line 33000
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/o;->c:Lcom/google/android/gms/measurement/internal/i;

    .line 34000
    invoke-super {v0}, Lcom/google/android/gms/measurement/internal/c;->i()V

    .line 33000
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/o;->c:Lcom/google/android/gms/measurement/internal/i;

    .line 35000
    invoke-super {v0}, Lcom/google/android/gms/measurement/internal/c;->p()Landroid/content/Context;

    move-result-object v0

    .line 33000
    monitor-enter v1

    :try_start_0
    iget-boolean v2, v1, Lcom/google/android/gms/measurement/internal/o;->a:Z

    if-eqz v2, :cond_2

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/o;->c:Lcom/google/android/gms/measurement/internal/i;

    .line 36000
    invoke-super {v0}, Lcom/google/android/gms/measurement/internal/c;->v()Lcom/google/android/gms/measurement/internal/bf;

    move-result-object v0

    .line 37000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/bf;->g:Lcom/google/android/gms/measurement/internal/bh;

    .line 33000
    const-string v2, "Connection attempt already in progress"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/bh;->a(Ljava/lang/String;)V

    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 16000
    :sswitch_0
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/c;->v()Lcom/google/android/gms/measurement/internal/bf;

    move-result-object v0

    .line 17000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/bf;->g:Lcom/google/android/gms/measurement/internal/bh;

    .line 11000
    const-string v3, "Service available"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/bh;->a(Ljava/lang/String;)V

    move v0, v1

    goto :goto_2

    .line 18000
    :sswitch_1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/c;->v()Lcom/google/android/gms/measurement/internal/bf;

    move-result-object v0

    .line 19000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/bf;->g:Lcom/google/android/gms/measurement/internal/bh;

    .line 11000
    const-string v3, "Service missing"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/bh;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 20000
    :sswitch_2
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/c;->v()Lcom/google/android/gms/measurement/internal/bf;

    move-result-object v0

    .line 21000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/bf;->c:Lcom/google/android/gms/measurement/internal/bh;

    .line 11000
    const-string v3, "Service updating"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/bh;->a(Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_2

    .line 22000
    :sswitch_3
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/c;->v()Lcom/google/android/gms/measurement/internal/bf;

    move-result-object v0

    .line 23000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/bf;->f:Lcom/google/android/gms/measurement/internal/bh;

    .line 11000
    const-string v3, "Service container out of date"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/bh;->a(Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_2

    .line 24000
    :sswitch_4
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/c;->v()Lcom/google/android/gms/measurement/internal/bf;

    move-result-object v0

    .line 25000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/bf;->c:Lcom/google/android/gms/measurement/internal/bh;

    .line 11000
    const-string v3, "Service disabled"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/bh;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 26000
    :sswitch_5
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/c;->v()Lcom/google/android/gms/measurement/internal/bf;

    move-result-object v0

    .line 27000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/bf;->c:Lcom/google/android/gms/measurement/internal/bh;

    .line 11000
    const-string v3, "Service invalid"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/bh;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 33000
    :cond_2
    :try_start_1
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/o;->b:Lcom/google/android/gms/measurement/internal/be;

    if-eqz v2, :cond_3

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/o;->c:Lcom/google/android/gms/measurement/internal/i;

    .line 38000
    invoke-super {v0}, Lcom/google/android/gms/measurement/internal/c;->v()Lcom/google/android/gms/measurement/internal/bf;

    move-result-object v0

    .line 39000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/bf;->g:Lcom/google/android/gms/measurement/internal/bh;

    .line 33000
    const-string v2, "Already awaiting connection attempt"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/bh;->a(Ljava/lang/String;)V

    monitor-exit v1

    goto/16 :goto_0

    :cond_3
    new-instance v2, Lcom/google/android/gms/measurement/internal/be;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v0, v3, v1, v1}, Lcom/google/android/gms/measurement/internal/be;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/m;Lcom/google/android/gms/common/internal/n;)V

    iput-object v2, v1, Lcom/google/android/gms/measurement/internal/o;->b:Lcom/google/android/gms/measurement/internal/be;

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/o;->c:Lcom/google/android/gms/measurement/internal/i;

    .line 40000
    invoke-super {v0}, Lcom/google/android/gms/measurement/internal/c;->v()Lcom/google/android/gms/measurement/internal/bf;

    move-result-object v0

    .line 41000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/bf;->g:Lcom/google/android/gms/measurement/internal/bh;

    .line 33000
    const-string v2, "Connecting to remote service"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/bh;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/google/android/gms/measurement/internal/o;->a:Z

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/o;->b:Lcom/google/android/gms/measurement/internal/be;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/be;->f()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 43000
    :cond_4
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/c;->p()Landroid/content/Context;

    move-result-object v0

    .line 42000
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 44000
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/c;->p()Landroid/content/Context;

    move-result-object v4

    .line 42000
    const-string v5, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 0
    :goto_3
    if-eqz v1, :cond_7

    .line 45000
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/c;->v()Lcom/google/android/gms/measurement/internal/bf;

    move-result-object v0

    .line 46000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/bf;->g:Lcom/google/android/gms/measurement/internal/bh;

    .line 0
    const-string v1, "Using local app measurement service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/bh;->a(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.measurement.START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    .line 47000
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/c;->p()Landroid/content/Context;

    move-result-object v2

    .line 0
    const-string v3, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/i;->a:Lcom/google/android/gms/measurement/internal/o;

    .line 48000
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/o;->c:Lcom/google/android/gms/measurement/internal/i;

    .line 49000
    invoke-super {v2}, Lcom/google/android/gms/measurement/internal/c;->i()V

    .line 48000
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/o;->c:Lcom/google/android/gms/measurement/internal/i;

    .line 50000
    invoke-super {v2}, Lcom/google/android/gms/measurement/internal/c;->p()Landroid/content/Context;

    move-result-object v2

    .line 48000
    invoke-static {}, Lcom/google/android/gms/common/stats/a;->a()Lcom/google/android/gms/common/stats/a;

    monitor-enter v1

    :try_start_2
    iget-boolean v3, v1, Lcom/google/android/gms/measurement/internal/o;->a:Z

    if-eqz v3, :cond_6

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/o;->c:Lcom/google/android/gms/measurement/internal/i;

    .line 51000
    invoke-super {v0}, Lcom/google/android/gms/measurement/internal/c;->v()Lcom/google/android/gms/measurement/internal/bf;

    move-result-object v0

    .line 51001
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/bf;->g:Lcom/google/android/gms/measurement/internal/bh;

    .line 48000
    const-string v2, "Connection attempt already in progress"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/bh;->a(Ljava/lang/String;)V

    monitor-exit v1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_5
    move v1, v2

    .line 42000
    goto :goto_3

    .line 48000
    :cond_6
    const/4 v3, 0x1

    :try_start_3
    iput-boolean v3, v1, Lcom/google/android/gms/measurement/internal/o;->a:Z

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/o;->c:Lcom/google/android/gms/measurement/internal/i;

    .line 51002
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/i;->a:Lcom/google/android/gms/measurement/internal/o;

    .line 48000
    const/16 v4, 0x81

    invoke-static {v2, v0, v3, v4}, Lcom/google/android/gms/common/stats/a;->b(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    .line 51003
    :cond_7
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/c;->x()Lcom/google/android/gms/measurement/internal/am;

    move-result-object v0

    .line 0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/am;->O()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 51004
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/c;->v()Lcom/google/android/gms/measurement/internal/bf;

    move-result-object v0

    .line 51005
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/bf;->g:Lcom/google/android/gms/measurement/internal/bh;

    .line 0
    const-string v1, "Using direct local measurement implementation"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/bh;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/cf;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/i;->n:Lcom/google/android/gms/measurement/internal/ca;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/cf;-><init>(Lcom/google/android/gms/measurement/internal/ca;B)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/i;->a(Lcom/google/android/gms/measurement/internal/ba;)V

    goto/16 :goto_0

    .line 51006
    :cond_8
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/c;->v()Lcom/google/android/gms/measurement/internal/bf;

    move-result-object v0

    .line 51007
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/bf;->a:Lcom/google/android/gms/measurement/internal/bh;

    .line 0
    const-string v1, "Not in main process. Unable to use local measurement implementation. Please register the AppMeasurementService service in the app manifest"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/bh;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 11000
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x9 -> :sswitch_5
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public final z()V
    .locals 2

    .prologue
    .line 0
    .line 51014
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/c;->i()V

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/i;->b()V

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/stats/a;->a()Lcom/google/android/gms/common/stats/a;

    .line 51015
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/c;->p()Landroid/content/Context;

    move-result-object v0

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/i;->a:Lcom/google/android/gms/measurement/internal/o;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/stats/a;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/i;->b:Lcom/google/android/gms/measurement/internal/ba;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method
