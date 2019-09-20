.class public Landroid/databinding/ViewStubProxy;
.super Ljava/lang/Object;
.source "ViewStubProxy.java"


# instance fields
.field private mContainingBinding:Landroid/databinding/ViewDataBinding;

.field private mOnInflateListener:Landroid/view/ViewStub$OnInflateListener;

.field private mProxyListener:Landroid/view/ViewStub$OnInflateListener;

.field private mRoot:Landroid/view/View;

.field private mViewDataBinding:Landroid/databinding/ViewDataBinding;

.field private mViewStub:Landroid/view/ViewStub;


# direct methods
.method public constructor <init>(Landroid/view/ViewStub;)V
    .registers 3
    .param p1    # Landroid/view/ViewStub;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/databinding/ViewStubProxy$1;

    invoke-direct {v0, p0}, Landroid/databinding/ViewStubProxy$1;-><init>(Landroid/databinding/ViewStubProxy;)V

    iput-object v0, p0, Landroid/databinding/ViewStubProxy;->mProxyListener:Landroid/view/ViewStub$OnInflateListener;

    .line 55
    iput-object p1, p0, Landroid/databinding/ViewStubProxy;->mViewStub:Landroid/view/ViewStub;

    .line 56
    iget-object p1, p0, Landroid/databinding/ViewStubProxy;->mViewStub:Landroid/view/ViewStub;

    iget-object v0, p0, Landroid/databinding/ViewStubProxy;->mProxyListener:Landroid/view/ViewStub$OnInflateListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    return-void
.end method

.method static synthetic access$002(Landroid/databinding/ViewStubProxy;Landroid/view/View;)Landroid/view/View;
    .registers 2

    .line 30
    iput-object p1, p0, Landroid/databinding/ViewStubProxy;->mRoot:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$102(Landroid/databinding/ViewStubProxy;Landroid/databinding/ViewDataBinding;)Landroid/databinding/ViewDataBinding;
    .registers 2

    .line 30
    iput-object p1, p0, Landroid/databinding/ViewStubProxy;->mViewDataBinding:Landroid/databinding/ViewDataBinding;

    return-object p1
.end method

.method static synthetic access$200(Landroid/databinding/ViewStubProxy;)Landroid/databinding/ViewDataBinding;
    .registers 1

    .line 30
    iget-object p0, p0, Landroid/databinding/ViewStubProxy;->mContainingBinding:Landroid/databinding/ViewDataBinding;

    return-object p0
.end method

.method static synthetic access$302(Landroid/databinding/ViewStubProxy;Landroid/view/ViewStub;)Landroid/view/ViewStub;
    .registers 2

    .line 30
    iput-object p1, p0, Landroid/databinding/ViewStubProxy;->mViewStub:Landroid/view/ViewStub;

    return-object p1
.end method

.method static synthetic access$400(Landroid/databinding/ViewStubProxy;)Landroid/view/ViewStub$OnInflateListener;
    .registers 1

    .line 30
    iget-object p0, p0, Landroid/databinding/ViewStubProxy;->mOnInflateListener:Landroid/view/ViewStub$OnInflateListener;

    return-object p0
.end method

.method static synthetic access$402(Landroid/databinding/ViewStubProxy;Landroid/view/ViewStub$OnInflateListener;)Landroid/view/ViewStub$OnInflateListener;
    .registers 2

    .line 30
    iput-object p1, p0, Landroid/databinding/ViewStubProxy;->mOnInflateListener:Landroid/view/ViewStub$OnInflateListener;

    return-object p1
.end method


# virtual methods
.method public getBinding()Landroid/databinding/ViewDataBinding;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 94
    iget-object v0, p0, Landroid/databinding/ViewStubProxy;->mViewDataBinding:Landroid/databinding/ViewDataBinding;

    return-object v0
.end method

.method public getRoot()Landroid/view/View;
    .registers 2

    .line 82
    iget-object v0, p0, Landroid/databinding/ViewStubProxy;->mRoot:Landroid/view/View;

    return-object v0
.end method

.method public getViewStub()Landroid/view/ViewStub;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 104
    iget-object v0, p0, Landroid/databinding/ViewStubProxy;->mViewStub:Landroid/view/ViewStub;

    return-object v0
.end method

.method public isInflated()Z
    .registers 2

    .line 71
    iget-object v0, p0, Landroid/databinding/ViewStubProxy;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public setContainingBinding(Landroid/databinding/ViewDataBinding;)V
    .registers 2
    .param p1    # Landroid/databinding/ViewDataBinding;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 60
    iput-object p1, p0, Landroid/databinding/ViewStubProxy;->mContainingBinding:Landroid/databinding/ViewDataBinding;

    return-void
.end method

.method public setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V
    .registers 3
    .param p1    # Landroid/view/ViewStub$OnInflateListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 115
    iget-object v0, p0, Landroid/databinding/ViewStubProxy;->mViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_6

    .line 116
    iput-object p1, p0, Landroid/databinding/ViewStubProxy;->mOnInflateListener:Landroid/view/ViewStub$OnInflateListener;

    :cond_6
    return-void
.end method
