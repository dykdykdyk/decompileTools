.class public abstract Lcom/nut/blehunter/ui/b/i;
.super Lcom/nut/blehunter/ui/b/h;
.source "BaseMapFragment.java"


# static fields
.field public static final a:Ljava/lang/String;

.field protected static d:Ljava/lang/String;


# instance fields
.field protected final b:J

.field protected final c:F

.field protected final e:I

.field protected f:Z

.field protected g:Z

.field protected h:Lcom/nut/blehunter/ui/b/s;

.field protected i:Lcom/nut/blehunter/ui/b/t;

.field protected j:Lcom/nut/blehunter/ui/b/u;

.field protected k:Lcom/nut/blehunter/ui/b/v;

.field protected l:Lcom/nut/blehunter/ui/b/r;

.field protected m:Lcom/nut/blehunter/ui/b/q;

.field protected n:Lcom/nut/blehunter/ui/b/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/nut/blehunter/ui/b/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nut/blehunter/ui/b/i;->a:Ljava/lang/String;

    .line 55
    const-string v0, ""

    sput-object v0, Lcom/nut/blehunter/ui/b/i;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b/h;-><init>()V

    .line 51
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/nut/blehunter/ui/b/i;->b:J

    .line 53
    const/high16 v0, 0x41c80000    # 25.0f

    iput v0, p0, Lcom/nut/blehunter/ui/b/i;->c:F

    .line 57
    const/4 v0, 0x5

    iput v0, p0, Lcom/nut/blehunter/ui/b/i;->e:I

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nut/blehunter/ui/b/i;->f:Z

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nut/blehunter/ui/b/i;->g:Z

    return-void
.end method

.method public static a(Landroid/content/Context;ILcom/nut/blehunter/entity/Nut;)Landroid/view/View;
    .locals 3

    .prologue
    .line 184
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 185
    const v1, 0x7f0300b4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 186
    const v0, 0x7f0d023b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 187
    invoke-static {p1}, Lcom/nut/blehunter/ui/b/i;->c(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 188
    const v0, 0x7f0d023c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/ui/widget/CircleImageView;

    .line 189
    invoke-static {v0, p2}, Lcom/nut/blehunter/t;->a(Landroid/widget/ImageView;Lcom/nut/blehunter/entity/Nut;)V

    .line 190
    return-object v1
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 164
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 166
    const/16 v1, 0xb

    if-eq p1, v1, :cond_0

    const/16 v1, 0xc

    if-ne p1, v1, :cond_1

    .line 167
    :cond_0
    const v1, 0x7f0300b3

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 168
    const v0, 0x7f0d023d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 169
    invoke-static {p1}, Lcom/nut/blehunter/ui/b/i;->c(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 170
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v1

    .line 180
    :goto_0
    return-object v0

    .line 172
    :cond_1
    const v1, 0x7f0300b2

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 173
    const v0, 0x7f0d023b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 174
    invoke-static {p1}, Lcom/nut/blehunter/ui/b/i;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 175
    const v0, 0x7f0d023c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/ui/widget/CircleImageView;

    .line 176
    const/16 v1, 0xa

    if-ne p1, v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/widget/CircleImageView;->setIsOverlay(Z)V

    .line 177
    invoke-static {v0, p2}, Lcom/nut/blehunter/t;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0

    .line 176
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static c(I)I
    .locals 4

    .prologue
    const v0, 0x7f020261

    const v1, 0x7f020260

    const v2, 0x7f02024d

    .line 121
    const/4 v3, 0x0

    .line 122
    packed-switch p0, :pswitch_data_0

    move v0, v3

    .line 160
    :goto_0
    :pswitch_0
    return v0

    .line 127
    :pswitch_1
    const v0, 0x7f020262

    .line 128
    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 131
    goto :goto_0

    .line 133
    :pswitch_3
    const v0, 0x7f02025d

    .line 134
    goto :goto_0

    :pswitch_4
    move v0, v1

    .line 137
    goto :goto_0

    .line 142
    :pswitch_5
    const v0, 0x7f020259

    .line 143
    goto :goto_0

    .line 145
    :pswitch_6
    const v0, 0x7f020258

    .line 146
    goto :goto_0

    :pswitch_7
    move v0, v2

    .line 149
    goto :goto_0

    :pswitch_8
    move v0, v2

    .line 152
    goto :goto_0

    .line 154
    :pswitch_9
    const v0, 0x7f02025b

    .line 155
    goto :goto_0

    .line 157
    :pswitch_a
    const v0, 0x7f02025c

    goto :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method protected static d(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 257
    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract a(Ljava/lang/String;Lcom/nut/blehunter/entity/CustomLatLng;I)Ljava/lang/String;
.end method

.method public abstract a(Ljava/lang/String;Lcom/nut/blehunter/entity/CustomLatLng;ILcom/nut/blehunter/entity/Nut;)Ljava/lang/String;
.end method

.method public abstract a(Ljava/lang/String;Lcom/nut/blehunter/entity/CustomLatLng;ILjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract a(F)V
.end method

.method public abstract a(I)V
.end method

.method public abstract a(Lcom/nut/blehunter/entity/CustomLatLng;)V
.end method

.method public abstract a(Lcom/nut/blehunter/entity/CustomLatLng;D)V
.end method

.method public abstract a(Lcom/nut/blehunter/entity/CustomLatLng;Z)V
.end method

.method public final a(Lcom/nut/blehunter/ui/b/p;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/nut/blehunter/ui/b/i;->n:Lcom/nut/blehunter/ui/b/p;

    .line 113
    return-void
.end method

.method public final a(Lcom/nut/blehunter/ui/b/q;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/nut/blehunter/ui/b/i;->m:Lcom/nut/blehunter/ui/b/q;

    .line 108
    return-void
.end method

.method public final a(Lcom/nut/blehunter/ui/b/r;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/nut/blehunter/ui/b/i;->l:Lcom/nut/blehunter/ui/b/r;

    .line 103
    return-void
.end method

.method public final a(Lcom/nut/blehunter/ui/b/s;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/nut/blehunter/ui/b/i;->h:Lcom/nut/blehunter/ui/b/s;

    .line 85
    return-void
.end method

.method public final a(Lcom/nut/blehunter/ui/b/t;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/nut/blehunter/ui/b/i;->i:Lcom/nut/blehunter/ui/b/t;

    .line 90
    return-void
.end method

.method public final a(Lcom/nut/blehunter/ui/b/u;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/nut/blehunter/ui/b/i;->j:Lcom/nut/blehunter/ui/b/u;

    .line 94
    return-void
.end method

.method public final a(Lcom/nut/blehunter/ui/b/v;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/nut/blehunter/ui/b/i;->k:Lcom/nut/blehunter/ui/b/v;

    .line 99
    return-void
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public abstract a(Ljava/lang/String;I)V
.end method

.method public abstract a(Ljava/lang/String;ILcom/nut/blehunter/entity/Nut;)V
.end method

.method public abstract a(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract a(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nut/blehunter/entity/CustomLatLng;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract a(Z)V
.end method

.method public abstract b(I)F
.end method

.method public abstract b(Ljava/lang/String;)V
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/nut/blehunter/ui/b/i;->f:Z

    .line 81
    return-void
.end method

.method public abstract c()V
.end method

.method public abstract c(Ljava/lang/String;)V
.end method

.method public abstract d()V
.end method

.method public abstract e()V
.end method

.method public abstract f_()V
.end method
