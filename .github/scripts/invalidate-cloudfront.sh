#!/bin/bash
# CloudFront invalidation script

if [ ! -z "$AWS_CLOUDFRONT_DISTRIBUTION_ID" ]; then
    echo "🔄 Invalidating CloudFront cache..."
    aws cloudfront create-invalidation \
        --distribution-id $AWS_CLOUDFRONT_DISTRIBUTION_ID \
        --paths "/*"
    echo "✅ CloudFront cache invalidated"
else
    echo "⚠️  CloudFront distribution ID not configured, skipping invalidation"
fi
