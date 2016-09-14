.class abstract Landroid/support/v7/a/v;
.super Landroid/support/v7/a/u;
.source "AppCompatDelegateImplBase.java"


# static fields
.field private static p:Z

.field private static final q:Z

.field private static final r:[I


# instance fields
.field final b:Landroid/content/Context;

.field final c:Landroid/view/Window;

.field final d:Landroid/view/Window$Callback;

.field final e:Landroid/view/Window$Callback;

.field final f:Landroid/support/v7/a/t;

.field g:Landroid/support/v7/a/a;

.field h:Landroid/view/MenuInflater;

.field i:Z

.field j:Z

.field k:Z

.field l:Z

.field m:Z

.field n:Ljava/lang/CharSequence;

.field o:Z

.field private s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v0, v3, :cond_1

    move v0, v1

    .line 51
    :goto_0
    sput-boolean v0, Landroid/support/v7/a/v;->q:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/support/v7/a/v;->p:Z

    if-nez v0, :cond_0

    .line 53
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 55
    new-instance v3, Landroid/support/v7/a/w;

    invoke-direct {v3, v0}, Landroid/support/v7/a/w;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v3}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 80
    sput-boolean v1, Landroid/support/v7/a/v;->p:Z

    .line 84
    :cond_0
    new-array v0, v1, [I

    const v1, 0x1010054

    aput v1, v0, v2

    sput-object v0, Landroid/support/v7/a/v;->r:[I

    return-void

    :cond_1
    move v0, v2

    .line 44
    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/a/t;)V
    .locals 3

    .prologue
    .line 111
    invoke-direct {p0}, Landroid/support/v7/a/u;-><init>()V

    .line 112
    iput-object p1, p0, Landroid/support/v7/a/v;->b:Landroid/content/Context;

    .line 113
    iput-object p2, p0, Landroid/support/v7/a/v;->c:Landroid/view/Window;

    .line 114
    iput-object p3, p0, Landroid/support/v7/a/v;->f:Landroid/support/v7/a/t;

    .line 116
    iget-object v0, p0, Landroid/support/v7/a/v;->c:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/a/v;->d:Landroid/view/Window$Callback;

    .line 117
    iget-object v0, p0, Landroid/support/v7/a/v;->d:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/support/v7/a/x;

    if-eqz v0, :cond_0

    .line 118
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AppCompat has already installed itself into the Window"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    iget-object v0, p0, Landroid/support/v7/a/v;->d:Landroid/view/Window$Callback;

    invoke-virtual {p0, v0}, Landroid/support/v7/a/v;->a(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/a/v;->e:Landroid/view/Window$Callback;

    .line 123
    iget-object v0, p0, Landroid/support/v7/a/v;->c:Landroid/view/Window;

    iget-object v1, p0, Landroid/support/v7/a/v;->e:Landroid/view/Window$Callback;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 125
    const/4 v0, 0x0

    sget-object v1, Landroid/support/v7/a/v;->r:[I

    invoke-static {p1, v0, v1}, Landroid/support/v7/widget/ga;->a(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/support/v7/widget/ga;

    move-result-object v0

    .line 127
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ga;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 128
    if-eqz v1, :cond_1

    .line 129
    iget-object v2, p0, Landroid/support/v7/a/v;->c:Landroid/view/Window;

    invoke-virtual {v2, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1206
    :cond_1
    iget-object v0, v0, Landroid/support/v7/widget/ga;->a:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 132
    return-void
.end method


# virtual methods
.method public final a()Landroid/support/v7/a/a;
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0}, Landroid/support/v7/a/v;->l()V

    .line 145
    iget-object v0, p0, Landroid/support/v7/a/v;->g:Landroid/support/v7/a/a;

    return-object v0
.end method

.method a(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
    .locals 1

    .prologue
    .line 137
    new-instance v0, Landroid/support/v7/a/x;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/a/x;-><init>(Landroid/support/v7/a/v;Landroid/view/Window$Callback;)V

    return-object v0
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Landroid/support/v7/a/v;->n:Ljava/lang/CharSequence;

    .line 285
    invoke-virtual {p0, p1}, Landroid/support/v7/a/v;->b(Ljava/lang/CharSequence;)V

    .line 286
    return-void
.end method

.method abstract a(ILandroid/view/KeyEvent;)Z
.end method

.method abstract a(Landroid/view/KeyEvent;)Z
.end method

.method public final b()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Landroid/support/v7/a/v;->h:Landroid/view/MenuInflater;

    if-nez v0, :cond_0

    .line 156
    invoke-virtual {p0}, Landroid/support/v7/a/v;->l()V

    .line 157
    new-instance v1, Landroid/support/v7/view/i;

    iget-object v0, p0, Landroid/support/v7/a/v;->g:Landroid/support/v7/a/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/a/v;->g:Landroid/support/v7/a/a;

    .line 158
    invoke-virtual {v0}, Landroid/support/v7/a/a;->e()Landroid/content/Context;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Landroid/support/v7/view/i;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/a/v;->h:Landroid/view/MenuInflater;

    .line 160
    :cond_0
    iget-object v0, p0, Landroid/support/v7/a/v;->h:Landroid/view/MenuInflater;

    return-object v0

    .line 158
    :cond_1
    iget-object v0, p0, Landroid/support/v7/a/v;->b:Landroid/content/Context;

    goto :goto_0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 291
    return-void
.end method

.method abstract b(Ljava/lang/CharSequence;)V
.end method

.method public d()V
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/a/v;->s:Z

    .line 241
    return-void
.end method

.method abstract d(I)V
.end method

.method public e()V
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/a/v;->s:Z

    .line 246
    return-void
.end method

.method abstract e(I)Z
.end method

.method public h()V
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/a/v;->o:Z

    .line 251
    return-void
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x0

    return v0
.end method

.method abstract l()V
.end method

.method final m()Landroid/content/Context;
    .locals 2

    .prologue
    .line 183
    const/4 v0, 0x0

    .line 186
    invoke-virtual {p0}, Landroid/support/v7/a/v;->a()Landroid/support/v7/a/a;

    move-result-object v1

    .line 187
    if-eqz v1, :cond_0

    .line 188
    invoke-virtual {v1}, Landroid/support/v7/a/a;->e()Landroid/content/Context;

    move-result-object v0

    .line 191
    :cond_0
    if-nez v0, :cond_1

    .line 192
    iget-object v0, p0, Landroid/support/v7/a/v;->b:Landroid/content/Context;

    .line 194
    :cond_1
    return-object v0
.end method
