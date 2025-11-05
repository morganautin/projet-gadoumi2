from rest_framework import viewsets, permissions, filters
from .models import Product
from .serializers import ProductSerializer

class ProductViewSet(viewsets.ModelViewSet):
    queryset = Product.objects.all().order_by("-created_at")
    serializer_class = ProductSerializer
    permission_classes = [permissions.AllowAny]  # à durcir plus tard
    filter_backends = [filters.OrderingFilter]
    ordering_fields = ["created_at", "price", "name"]
    ordering = ["-created_at"]
